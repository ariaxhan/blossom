import SwiftUI
import FirebaseFirestore

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

        print("Sending message: \(message.content)")

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
            print("Document added, now calling Vertex AI...")

            // Call Vertex AI from iOS
            callVertexAI(prompt: message.content) { response, error in
                if let error = error {
                    DispatchQueue.main.async {
                        print("Error calling Vertex AI: \(error)")
                        errorMessage = "Failed to get response. Please try again."
                        showErrorAlert = true
                        isStreaming = false
                    }
                    return
                }

                if let response = response {
                    DispatchQueue.main.async {
                        print("Response from Vertex AI: \(response)")
                        if let lastIndex = viewModel.messages.lastIndex(of: message) {
                            viewModel.messages[lastIndex].content += "\n\(response)"
                        }
                        saveResponseToFirestore(prompt: message.content, response: response)
                        isStreaming = false
                    }
                }
            }
        }
    }

    func callVertexAI(prompt: String, completion: @escaping (String?, Error?) -> Void) {
        let endpoint = "https://us-west2-aiplatform.googleapis.com/v1/projects/blossom-1205/locations/us-west2/publishers/google/models/gemini-1.5-flash:predict"
        let apiKey = "ce9a0f08e13696b331a2f2f78c23e131193219e3"
        
        let parameters: [String: Any] = [
            "instances": [
                [
                    "content": prompt
                ]
            ],
            "parameters": [
                "temperature": 0.7,
                "max_output_tokens": 200
            ]
        ]
        
        guard let url = URL(string: endpoint) else {
            completion(nil, NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")

        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
        } catch {
            completion(nil, error)
            return
        }

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(nil, error)
                return
            }

            guard let data = data else {
                completion(nil, NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                return
            }

            do {
                // Print the raw response for debugging
                if let jsonString = String(data: data, encoding: .utf8) {
                    print("Raw response: \(jsonString)")
                }

                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let predictions = json["predictions"] as? [[String: Any]],
                   let result = predictions.first?["content"] as? String {
                    completion(result, nil)
                } else {
                    completion(nil, NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid response format"]))
                }
            } catch {
                completion(nil, error)
            }
        }

        task.resume()
    }

    func saveResponseToFirestore(prompt: String, response: String) {
        firestore.collection(collectionName).whereField(promptField, isEqualTo: prompt).getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error finding document: \(error)")
                return
            }

            guard let document = querySnapshot?.documents.first else {
                print("No matching document found")
                return
            }

            document.reference.updateData([
                responseField: response
            ]) { error in
                if let error = error {
                    print("Error updating document: \(error)")
                } else {
                    print("Document successfully updated")
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
