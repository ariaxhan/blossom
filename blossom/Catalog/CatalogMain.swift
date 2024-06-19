//
//  CatalogMain.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct CatalogMain: View {
    // Sample data (replace with your actual content)
       let categories = [
        ("Mindfulness", "mindfulness", AnyView(Mindfulness())),
           ("Interpersonal", "interpersonal", AnyView(Interpersonal())),
           ("Emotion Regulation", "emotionregulation", AnyView(EmotionRegulation())),
           ("Self-Soothing", "selfsoothing", AnyView(SelfSoothing())),
           ("Problem Solving", "problemsolving", AnyView(ProblemSolvingView())),
           ("Existential Reflections", "existential", AnyView(Existential()))
       ]

       var body: some View {
           NavigationView {
               ScrollView {
                   LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                                       ForEach(categories, id: \.0) { (title, imageName, destinationView) in
                                           NavigationLink(destination: destinationView) { // Use the destinationView
                                               VStack {
                                                   Image(imageName)
                                                       .resizable()
                                                       .scaledToFit()
                                                       .cornerRadius(10)
                                                   Text(title)
                                                       .font(.headline)
                                                       .foregroundColor(.black)
                                                       .multilineTextAlignment(.center)
                                               }
                                               .padding(.bottom)
                                           }
                                       }
                                   }
                                   .padding()
               }
               .navigationTitle("Skills Catalog")
               .navigationBarTitleDisplayMode(.inline)
               .toolbar {
                   ToolbarItem(placement: .navigationBarTrailing) {
                       HStack {
                           Image(systemName: "magnifyingglass")
                           Image(systemName: "heart")
                           Image(systemName: "line.3.horizontal")
                       }
                   }
               }
           }
       }

}

struct CatalogMain_Previews: PreviewProvider {
    static var previews: some View {
        CatalogMain()
    }
}
