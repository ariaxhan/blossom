//
//  WorksheetViewModel.swift
//  blossom
//
//  Created by Aria Han on 6/22/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class WorksheetViewModel: ObservableObject {

    // Define the sample questions
    let sampleQuestions: [Question] = [
        Question(id: UUID().uuidString, text: "What is the problem or issue that you are currently facing? Describe it in detail."),
        Question(id: UUID().uuidString, text: "What are the facts about this situation? List any relevant information and data you have."),
        Question(id: UUID().uuidString, text: "What are the potential benefits (pros) of each possible decision or action you could take?"),
        Question(id: UUID().uuidString, text: "What are the potential drawbacks (cons) of each possible decision or action you could take?"),
        Question(id: UUID().uuidString, text: "What emotions are you experiencing regarding this situation? Describe your feelings and emotional reactions."),
        Question(id: UUID().uuidString, text: "What are your gut instincts or initial reactions telling you about this situation?"),
        Question(id: UUID().uuidString, text: "What does logic suggest is the best course of action? Consider the rational aspects and logical consequences."),
        Question(id: UUID().uuidString, text: "How can you integrate both your emotional and rational insights to come to a balanced decision? Describe your thought process."),
        Question(id: UUID().uuidString, text: "How do your values and long-term goals align with each of the options you are considering? Which option best aligns with your values?"),
        Question(id: UUID().uuidString, text: "Take a moment to practice mindfulness. How do you feel now after considering both emotional and rational insights?"),
        Question(id: UUID().uuidString, text: "Based on the integration of your emotional and rational insights, what decision or action do you feel is the most balanced and appropriate?"),
        Question(id: UUID().uuidString, text: "Reflect on your decision. How confident do you feel about it? What did you learn from this exercise?")
    ]

    @Published var worksheets = [Worksheet]()
    
    init() {
        loadSampleData()
    }

    private func loadSampleData() {
        // Define the sample worksheet
        let sampleWorksheet = Worksheet(id: UUID().uuidString, title: "Wise Mind Worksheet", questions: sampleQuestions, timestamp: Date())
        worksheets = [sampleWorksheet]
    }

    private var db = Firestore.firestore()

    func fetchWorksheets() {
        db.collection("worksheets").order(by: "timestamp", descending: true).addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }

            self.worksheets = documents.compactMap { queryDocumentSnapshot -> Worksheet? in
                return try? queryDocumentSnapshot.data(as: Worksheet.self)
            }
        }
    }

    func saveResponses(worksheetId: String, responses: [String]) {
        let responseData: [String: Any] = [
            "responses": responses,
            "timestamp": FieldValue.serverTimestamp()
        ]
        
        db.collection("worksheets").document(worksheetId).collection("responses").addDocument(data: responseData) { error in
            if let error = error {
                print("Error adding document: \(error.localizedDescription)")
            } else {
                print("Responses added successfully")
            }
        }
    }
}
