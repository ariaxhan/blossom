//
//  Chat.swift
//  blossom
//
//  Created by Aria Han on 6/19/24.
//

import Foundation
import FirebaseFirestoreSwift

enum ChatState: String, Codable, Equatable {
    case PENDING
    case COMPLETED
}

struct Chat: Identifiable, Codable, Equatable {
    @DocumentID var id: String?
    var text: String
    var isUser: Bool
    var state: ChatState
    
    static func == (lhs: Chat, rhs: Chat) -> Bool {
        return lhs.id == rhs.id &&
               lhs.text == rhs.text &&
               lhs.isUser == rhs.isUser &&
               lhs.state == rhs.state
    }
}

struct ChatDocument: Codable {
    @DocumentID var id: String?
    var prompt: String
    var response: String?
    var status: ChatStatus
    
    struct ChatStatus: Codable {
        var chatState: ChatState
    }
}
