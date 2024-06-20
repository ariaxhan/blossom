//
//  Chat.swift
//  blossom
//
//  Created by Aria Han on 6/19/24.
//


import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct ChatDocument: Codable {
    let createTime: Timestamp
    let prompt: String
    let response: String?
    let status: Status
    
    struct Status: Codable {
        let startTime: Timestamp?
        let completeTime: Timestamp?
        let updateTime: Timestamp
        let state: String
        let error: String?
        
        var chatState: ChatState {
            return ChatState(rawValue: state) ?? .PROCESSING
        }
    }
}

enum ChatState: String, Codable {
    case COMPLETED
    case ERROR
    case PROCESSING
}

struct Chat: Hashable {
    private(set) var id: UUID = .init()
    var text: String?
    var isUser: Bool
    var state: ChatState = .PROCESSING
    var message: String {
        switch state {
        case .COMPLETED:
            return text ?? ""
        case .ERROR:
            return "Something went wrong. Please try again."
        case .PROCESSING:
            return "..."
        }
    }
}
