//
//  SelfReflectionView.swift
//  blossom
//
//  Created by Aria Han on 6/19/24.
//

import SwiftUI

struct SelfReflectionView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Self Reflection on Problem-Solving Skills")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Reflecting on your problem-solving skills can help you identify strengths and areas for improvement, leading to more effective and adaptive strategies.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Strategies for Improving Problem-Solving Skills")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Strategy 1: Define the Problem
                    HStack(alignment: .top) {
                        Image(systemName: "magnifyingglass.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Define the Problem")
                                .font(.headline)
                                .bold()
                            Text("Clearly define the problem you are facing. Understanding the problem fully is the first step towards solving it.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 2: Brainstorm Solutions
                    HStack(alignment: .top) {
                        Image(systemName: "lightbulb.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Brainstorm Solutions")
                                .font(.headline)
                                .bold()
                            Text("Generate a variety of possible solutions. Don't judge the ideas at this stage; the goal is to think broadly.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 3: Evaluate and Choose
                    HStack(alignment: .top) {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Evaluate and Choose")
                                .font(.headline)
                                .bold()
                            Text("Evaluate the potential solutions and choose the most effective one. Consider the pros and cons of each option.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 4: Implement the Solution
                    HStack(alignment: .top) {
                        Image(systemName: "hammer.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Implement the Solution")
                                .font(.headline)
                                .bold()
                            Text("Put your chosen solution into action. Monitor the progress and make adjustments as needed.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 5: Reflect on the Outcome
                    HStack(alignment: .top) {
                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Reflect on the Outcome")
                                .font(.headline)
                                .bold()
                            Text("After implementing the solution, reflect on the outcome. What worked well? What could be improved? Use this insight for future problems.")
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

struct SelfReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelfReflectionView()
    }
}
