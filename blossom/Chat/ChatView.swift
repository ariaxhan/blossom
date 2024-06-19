import SwiftUI

struct ChatView: View {
    @EnvironmentObject var viewModel: ChatViewModel
    var initialPrompt: String

    @State private var inputText: String = ""

    var body: some View {
        VStack {
            List(viewModel.messages, id: \.self) { message in
                Text(message)
            }
            
            HStack {
                TextField("Enter message", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: {
                    viewModel.sendMessage(inputText)
                    inputText = ""
                }) {
                    Text("Send")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Chat with AI")
        .onAppear {
            viewModel.sendMessage(initialPrompt)
        }
    }
}
