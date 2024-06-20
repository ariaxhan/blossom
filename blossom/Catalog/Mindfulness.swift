//
//  Mindfulness.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct Mindfulness: View {
    var body: some View {
        ScrollView { // Allows scrolling if content exceeds screen height
            VStack(alignment: .center, spacing: 20) {
                Text("Mindfulness")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                
                Text("Mindfulness is the practice of paying attention to the present moment with openness and without judgment. It involves being aware of thoughts, feelings, bodily sensations, and the environment to reduce stress and improve well-being.")
                    .font(.body)
                    .foregroundColor(.white)
                
                Text("Skills")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                
                
                VStack(spacing: 20) {
                    
                    VStack {
                        // Wise Mind Image with NavigationLink
                        NavigationLink(destination: WiseMindView()) {
                            VStack {
                                Image("wise_mind")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Wise Mind")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    
                    // How Image
                    VStack {
                        NavigationLink(destination: HowView()) {
                            VStack {
                                Image("how")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("How")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    
                    // What Image
                    VStack {
                        NavigationLink(destination: WhatView()) {
                            VStack {
                                Image("what")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("What")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            .padding() // Add padding around content
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.8, green: 0.6, blue: 0.8), Color(red: 0.5, green: 0.5, blue: 0.8)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        )
        .navigationBarTitleDisplayMode(.inline)
        // Add other desired modifiers like .navigationTitle
    }
}

struct Mindfulness_Previews: PreviewProvider {
    static var previews: some View {
        Mindfulness()
    }
}
