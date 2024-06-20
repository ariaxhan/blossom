import SwiftUI

struct ContentView: View {
    @State private var textInput = ""
    @StateObject private var chatService = ChatService()
    var prompt: String?
    
    var body: some View {
        VStack {
            titleView()
            chatListView()
            inputView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground).ignoresSafeArea())
        .onAppear {
            chatService.clearMessages() // Clear messages when the view appears
            chatService.fetchMessages() // Fetch new messages
            if let prompt = prompt {
                chatService.sendMessage(prompt)
            }
        }
    }
    
    @ViewBuilder private func titleView() -> some View {
        Text("Practice with AI")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity)
            .background(Color.blue.opacity(0.1))
            .cornerRadius(10)
    }
    
    @ViewBuilder private func chatListView() -> some View {
        ScrollViewReader { proxy in
            ScrollView {
                ForEach(chatService.messages, id: \.id) { chatMessage in
                    chatMessageView(chatMessage)
                        .id(chatMessage.id)
                }
            }
            .onChange(of: chatService.messages) { oldMessages, newMessages in
                guard let recentMessage = newMessages.last else { return }
                DispatchQueue.main.async {
                    withAnimation {
                        proxy.scrollTo(recentMessage.id, anchor: .bottom)
                    }
                }
            }
        }
        .background(Color(.systemBackground))
    }
    
    @ViewBuilder private func inputView() -> some View {
        HStack {
            TextField("Enter a message...", text: $textInput)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            Button(action: sendMessage) {
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
    
    @ViewBuilder private func chatMessageView(_ chat: Chat) -> some View {
        HStack {
            if chat.isUser {
                Spacer()
                Text(chat.text)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.vertical, 4)
                    .padding(.leading, 40)
            } else {
                Text(chat.text)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.vertical, 4)
                    .padding(.trailing, 40)
                Spacer()
            }
        }
        .padding(.horizontal)
    }
    
    private func sendMessage() {
        chatService.sendMessage(textInput)
        textInput = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(prompt: "Would you like to practice a specific skill from the following: Visual Soothing, Auditory Soothing, Olfactory Soothing, Tactile Soothing, Gustatory Soothing?")
    }
}
