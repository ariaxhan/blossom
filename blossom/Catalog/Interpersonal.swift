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
                        NavigationLink(destination: CommunicationView()) {
                            VStack {
                                Image("communication")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Communication")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // How Image
                    VStack {
                        NavigationLink(destination: RelationShipBuildingView()) {
                            VStack {
                                Image("relationshipbuilding")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Relationship Building")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // What Image
                    VStack {
                        NavigationLink(destination: ConflictResolutionView()) {
                            VStack {
                                Image("conflictresolution")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Conflict Resolution")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // What Image
                    VStack {
                        NavigationLink(destination: EmpathyView()) {
                            VStack {
                                Image("empathy")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Empathy")
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
