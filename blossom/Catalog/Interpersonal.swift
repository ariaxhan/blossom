//
//  Interpersonal.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//


import SwiftUI

struct Interpersonal: View {
    var body: some View {
        ScrollView { // Allows scrolling if content exceeds screen height
            VStack(alignment: .center, spacing: 20) {
                Text("Interpersonal Effectiveness")
                    .font(.largeTitle)
                    .bold()
                
                Text("Interpersonal effectiveness involves navigating interactions skillfully to achieve mutually beneficial outcomes and maintain positive relationships.")
                    .font(.body)
                
                Text("Skills")
                    .font(.title2)
                    .bold()
                
                
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
                                    .foregroundColor(.black)
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
                                    .foregroundColor(.black)
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
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            .padding() // Add padding around content
        }
        .navigationBarTitleDisplayMode(.inline)
        // Add other desired modifiers like .navigationTitle
    }
}

struct Interpersonal_Previews: PreviewProvider {
    static var previews: some View {
        Interpersonal()
    }
}
