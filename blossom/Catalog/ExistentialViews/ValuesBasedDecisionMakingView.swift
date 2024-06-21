//
//  ValuesBasedDecisionMakingView.swift
//  blossom
//
//  Created by Aria Han on 6/21/24.
//
import SwiftUI

struct ValuesBasedDecisionMakingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Values-Based Decision Making")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Making decisions based on your core values can lead to a more fulfilling and authentic life. Here are some skills to help you make values-based decisions.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Skills for Values-Based Decision Making")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Step 1: Identify Your Core Values
                    HStack(alignment: .top) {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Identify Your Core Values")
                                .font(.headline)
                                .bold()
                            Text("Reflect on what is most important to you in life. These values will serve as your guiding principles in decision making.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 2: Align Decisions with Values
                    HStack(alignment: .top) {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Align Decisions with Values")
                                .font(.headline)
                                .bold()
                            Text("Evaluate how different options align with your core values. Choose the option that best reflects what you stand for.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 3: Evaluate Long-Term Impact
                    HStack(alignment: .top) {
                        Image(systemName: "clock.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Evaluate Long-Term Impact")
                                .font(.headline)
                                .bold()
                            Text("Consider the long-term effects of your decision on your life and well-being. Make sure it aligns with your future goals and values.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 4: Seek Feedback from Trusted Sources
                    HStack(alignment: .top) {
                        Image(systemName: "person.3.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Seek Feedback from Trusted Sources")
                                .font(.headline)
                                .bold()
                            Text("Consult with people you trust to gain different perspectives. They can help you see if your decision aligns with your values.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 5: Reflect on Past Decisions
                    HStack(alignment: .top) {
                        Image(systemName: "book.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Reflect on Past Decisions")
                                .font(.headline)
                                .bold()
                            Text("Look back at past decisions and evaluate how well they aligned with your values. Use this reflection to inform future decisions.")
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

struct ValuesBasedDecisionMakingView_Previews: PreviewProvider {
    static var previews: some View {
        ValuesBasedDecisionMakingView()
    }
}
