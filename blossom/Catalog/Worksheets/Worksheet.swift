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
    var questions: [String]
}
struct Question: Identifiable, Codable {
    var id: String
    var text: String
}
