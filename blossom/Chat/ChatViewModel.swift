import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages: [String] = []

    func sendMessage(_ message: String, completion: @escaping () -> Void = {}) {
        messages.append("Me: \(message)")
        ChatSetup.shared.predictWithVertexAI(prompt: message) { [weak self] response in
            DispatchQueue.main.async {
                if let response = response {
                    self?.messages.append("AI: \(response)")
                } else {
                    self?.messages.append("Error: Could not get a response")
                }
                completion()
            }
        }
    }
}
