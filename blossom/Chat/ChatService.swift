import Foundation
import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift
import SwiftyMarkdown

class ChatService: ObservableObject {
    @Published private(set) var messages: [Chat] = []
    private var db = Firestore.firestore()
    private let collectionPath = "generate"
    
    func fetchMessages() {
        db.collection(collectionPath)
            .order(by: "createTime", descending: false)
            .addSnapshotListener { [weak self] querySnapshot, error in
                guard let self = self else { return }
                guard let documents = querySnapshot?.documents else {
                    print("No documents found")
                    return
                }
                
                self.messages = documents.compactMap { snapshot -> [Chat]? in
                    do {
                        let document = try snapshot.data(as: ChatDocument.self)
                        let prompt = Chat(text: document.prompt, isUser: true, state: .COMPLETED)
                        let response = Chat(text: self.processMarkdown(document.response ?? ""), isUser: false, state: document.status.chatState)
                        return [prompt, response]
                    } catch {
                        print(error.localizedDescription)
                        return nil
                    }
                }.flatMap { $0 }
            }
    }
    
    func sendMessage(_ message: String) {
        let placeholderMessages = [Chat(text: message, isUser: true, state: .COMPLETED), Chat(text: "", isUser: false)]
        messages.append(contentsOf: placeholderMessages)
        db.collection(collectionPath).addDocument(data: ["prompt": message])
    }
    
    func clearMessages() {
        messages.removeAll()
        objectWillChange.send()
    }
    
    private func processMarkdown(_ text: String) -> String {
        let md = SwiftyMarkdown(string: text)
        return md.attributedString().string
    }
}
