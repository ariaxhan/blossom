//
//  PersonalAccView.swift
//  blossom
//
//  Created by Aria Han on 6/21/24.
//
import SwiftUI

struct PersonalAccView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Personal Responsibility and Accountability")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Taking personal responsibility and being accountable for your actions are key to personal growth and building trust in relationships.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Skills for Personal Responsibility and Accountability")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Step 1: Own Your Actions
                    HStack(alignment: .top) {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Own Your Actions")
                                .font(.headline)
                                .bold()
                            Text("Acknowledge your actions and their outcomes, both positive and negative. Taking ownership is the first step to accountability.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 2: Set Clear Goals and Expectations
                    HStack(alignment: .top) {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Set Clear Goals and Expectations")
                                .font(.headline)
                                .bold()
                            Text("Define clear, achievable goals and understand the expectations. This helps in being responsible for meeting them.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 3: Follow Through on Commitments
                    HStack(alignment: .top) {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Follow Through on Commitments")
                                .font(.headline)
                                .bold()
                            Text("Keep your promises and commitments. Consistently following through builds trust and reliability.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 4: Accept Constructive Feedback
                    HStack(alignment: .top) {
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Accept Constructive Feedback")
                                .font(.headline)
                                .bold()
                            Text("Be open to feedback and use it to improve. Constructive criticism is essential for personal growth and accountability.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 5: Reflect and Learn from Mistakes
                    HStack(alignment: .top) {
                        Image(systemName: "book.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Reflect and Learn from Mistakes")
                                .font(.headline)
                                .bold()
                            Text("Reflect on your mistakes and learn from them. Understanding what went wrong helps you avoid repeating the same errors.")
                        }
                    }
                    .padding(.horizontal)
                }
                .padding()
    
                .cornerRadius(10)
                .padding(.horizontal)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Text("Practice with AI")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .padding()
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

struct PersonalAccView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalAccView()
    }
}
