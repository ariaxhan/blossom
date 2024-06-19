import SwiftUI
import FirebaseFirestore
import FirebaseFunctions

// ChatViewModel
class ChatViewModel: ObservableObject {
    @Published var messages: [ChatMessage] = []

    init(messages: [ChatMessage] = []) {
        self.messages = messages
    }
}

// ChatView
struct ChatView: View {
    @EnvironmentObject var viewModel: ChatViewModel
    let initialPrompt: String? // Allow optional initial prompt
    @State private var userInput = ""
    @State private var isStreaming = false
    @State private var showErrorAlert = false
    @State private var errorMessage = ""

    // Firestore setup
    private let firestore = Firestore.firestore()
    private let collectionName = "generate" // Firestore Collection Path
    private let promptField = "prompt" // Prompt Field
    private let responseField = "response" // Response Field
    private let orderField = "createTime" // Order Field
    
    var body: some View {
        VStack {
            // Chat Display
            ScrollView {
                LazyVStack(spacing: 10) {
                    ForEach(viewModel.messages, id: \.id) { message in
                        ChatMessageView(message: message)
                    }
                }
                .padding(.vertical)
            }
            .padding(.horizontal)

            // User Input Area
            HStack {
                TextField("Enter your message", text: $userInput)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)

                Button(action: {
                    sendMessage(initialPrompt: nil) // Call sendMessage without initialPrompt when the button is tapped
                }) {
                    Image(systemName: "paperplane")
                        .font(.title2)
                }
                .disabled(userInput.isEmpty || isStreaming)
                .padding(.horizontal)
            }
            .padding(.bottom)
        }
        .alert(isPresented: $showErrorAlert) {
            Alert(
                title: Text("Error"),
                message: Text(errorMessage),
                dismissButton: .default(Text("OK"))
            )
        }
        .onAppear {
            if let prompt = initialPrompt {
                sendMessage(initialPrompt: prompt)
            }
        }
    }

    func sendMessage(initialPrompt: String? = nil) {
        guard !isStreaming else { return }
        isStreaming = true

        // Determine the message content
        let content = initialPrompt ?? userInput
        let message = ChatMessage(content: content, isUser: true)
        viewModel.messages.append(message)

        if initialPrompt == nil {
            userInput = "" // Clear input field only if it's not the initial prompt
        }

        // Add document to Firestore
        firestore.collection(collectionName).addDocument(data: [
            promptField: message.content,
            orderField: FieldValue.serverTimestamp()
        ]) { error in
            if let error = error {
                DispatchQueue.main.async {
                    print("Error adding document: \(error)")
                    errorMessage = "Failed to send message. Please try again."
                    showErrorAlert = true
                    isStreaming = false
                }
                return
            }

            // Listen for changes to the document
            firestore.collection(collectionName)
                .whereField(promptField, isEqualTo: message.content)
                .order(by: orderField, descending: true)
                .limit(to: 1)
                .addSnapshotListener { querySnapshot, error in
                    guard let snapshot = querySnapshot else {
                        DispatchQueue.main.async {
                            print("Error fetching document: \(error!)")
                            errorMessage = "Failed to fetch response. Please try again."
                            showErrorAlert = true
                            isStreaming = false
                        }
                        return
                    }
                    if let document = snapshot.documents.first,
                       let response = document.get(self.responseField) as? String {
                        DispatchQueue.main.async {
                            if let lastIndex = viewModel.messages.lastIndex(of: message) {
                                viewModel.messages[lastIndex].content += response
                            }
                            isStreaming = false
                        }
                    }
                }
        }
    }
}

// Chat Message View
struct ChatMessageView: View {
    let message: ChatMessage

    var body: some View {
        HStack {
            if message.isUser {
                Spacer()
            }
            Text(message.content)
                .padding()
                .background(message.isUser ? Color.blue : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal, 15)
                .padding(.vertical, 8)
            if !message.isUser {
                Spacer()
            }
        }
    }
}

// Chat Message
struct ChatMessage: Hashable, Identifiable {
    let id = UUID() // Unique identifier for each message
    var content: String
    let isUser: Bool
}

// Preview Provider
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        // Example with initial prompt:
        ChatView(initialPrompt: "Tell me about wise minds")
            .environmentObject(ChatViewModel())
    }
}
