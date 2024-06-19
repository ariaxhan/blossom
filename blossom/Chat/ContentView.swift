import SwiftUI

struct ContentView: View {
    @State private var textInput = ""
    @StateObject private var chatService = ChatService()
    
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
            .onChange(of: chatService.messages) { _ in
                guard let recentMessage = chatService.messages.last else { return }
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
                    .frame(width: 24, height: 24)
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
                Text(chat.message)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.vertical, 4)
                    .padding(.leading, 40)
            } else {
                Text(chat.message)
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

#Preview {
    ContentView()
}
