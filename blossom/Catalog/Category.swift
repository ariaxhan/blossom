//
//  Category.swift
//  blossom
//
//  Created by Aria Han on 6/18/24.
//
// Category.swift
import Foundation
import SwiftUI
import Firebase

struct Category: FirestoreModel {
    var id: String { title }
    let title: String
    let imageUrl: String
    let destinationView: AnyView
    
    init?(document: DocumentSnapshot) {
        let data = document.data()
        let title = data?["title"] as? String ?? ""
        let imageUrl = data?["imageUrl"] as? String ?? ""
        let destinationViewName = data?["destinationView"] as? String ?? ""
        
        self.title = title
        self.imageUrl = imageUrl
        
        switch destinationViewName {
        case "Mindfulness":
            self.destinationView = AnyView(Mindfulness())
        case "Interpersonal":
            self.destinationView = AnyView(Interpersonal())
        case "Emotion Regulation":
            self.destinationView = AnyView(EmotionRegulation())
        case "Self-Soothing":
            self.destinationView = AnyView(SelfSoothing())
        case "Problem Solving":
            self.destinationView = AnyView(ProblemSolving())
        case "Existential":
            self.destinationView = AnyView(Existential())
        default:
            self.destinationView = AnyView(Text("Unknown View"))
        }
    }
}
