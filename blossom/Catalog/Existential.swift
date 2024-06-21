//
//  Existential.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct Existential: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Existential Reflections")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                
                Text("Explore life's profound questions and find personal meaning. Clarify values, navigate existential anxiety, and reflect on your life's purpose and goals.")
                    .font(.body)
                    .foregroundColor(.black)
                
                Text("Skills")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.black)
                
                VStack(spacing: 20) {
                    
                    // Self-Reflection Image with NavigationLink
                    VStack {
                        NavigationLink(destination: PurposeAndGoalsView()) {
                            VStack {
                                Image("purpose_and_goals")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Purpose and Goals Clarification")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Gestalt Two-Chair Image with NavigationLink
                    VStack {
                        NavigationLink(destination: ExistentialAnxietyView()) {
                            VStack {
                                Image("existentialanxiety")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Existential Anxiety Management")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Figure-Ground Analysis Image with NavigationLink
                    VStack {
                        NavigationLink(destination: ValuesBasedDecisionMakingView()) {
                            VStack {
                                Image("values_based")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Values-Based Decision Making")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Role-Playing Image with NavigationLink
                    VStack {
                        NavigationLink(destination: PersonalAccView()) {
                            VStack {
                                Image("personalacc")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Personal Responsibility and Accountability")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.95, green: 0.9, blue: 1.0), Color(red: 0.8, green: 0.9, blue: 1.0)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        )
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Existential_Previews: PreviewProvider {
    static var previews: some View {
        Existential()
    }
}

