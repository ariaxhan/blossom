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
    private var didFetch = false

    init() {
        fetchWorksheets()
    }

    func fetchWorksheets() {
        guard !didFetch else { return }
        didFetch = true
        
        print("Fetching worksheets...")
        db.collection("worksheets").addSnapshotListener { (querySnapshot, error) in
            if let error = error {
                print("Error fetching documents: \(error.localizedDescription)")
                return
            }

            guard let documents = querySnapshot?.documents else {
                print("No documents found")
                return
            }

            self.worksheets = documents.compactMap { queryDocumentSnapshot -> Worksheet? in
                print("Processing document: \(queryDocumentSnapshot.documentID)")
                return try? queryDocumentSnapshot.data(as: Worksheet.self)
            }

            print("Fetched \(self.worksheets.count) worksheets")
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
