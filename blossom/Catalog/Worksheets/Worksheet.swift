//
//  Worksheet.swift
//  blossom
//
//  Created by Aria Han on 6/22/24.
//

import Foundation
import FirebaseFirestoreSwift

struct Worksheet: Identifiable, Codable {
    @DocumentID var id: String?
    var title: String
    var questions: [Question]
    var timestamp: Date?
}

struct Question: Identifiable, Codable {
    var id: String
    var text: String
}
