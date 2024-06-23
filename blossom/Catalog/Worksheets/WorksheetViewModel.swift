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
    @Published var worksheets = [Worksheet]()
    private var db = Firestore.firestore()

    init() {
        fetchWorksheets()
    }

    func fetchWorksheets() {
        db.collection("worksheets").addSnapshotListener { (querySnapshot, error) in
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
            "responses": responses
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
