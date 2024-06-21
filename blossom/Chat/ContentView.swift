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
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.95, green: 0.9, blue: 1.0), Color(red: 0.8, green: 0.9, blue: 1.0)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        )
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
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
    }
    
    @ViewBuilder private func chatListView() -> some View {
        ScrollViewReader { proxy in
            ScrollView {
                ForEach(chatService.messages, id: \.id) { chatMessage in
                    chatMessageView(chatMessage)
                        .id(chatMessage.id)
                }
            }
            .onChange(of: chatService.messages) {
                guard let recentMessage = chatService.messages.last else { return }
                DispatchQueue.main.async {
                    withAnimation {
                        proxy.scrollTo(recentMessage.id, anchor: .bottom)
                    }
                }
            }
        }
    }
    
    @ViewBuilder private func inputView() -> some View {
        HStack {
            TextField("Enter a message...", text: $textInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.gray)
                .frame(height: 25)
            Button(action: sendMessage) {
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(UIColor.gray))
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
    }
    
    private func sendMessage() {
        chatService.sendMessage(textInput)
        textInput = ""
    }
}

#Preview {
    ContentView()
}
