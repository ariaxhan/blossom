//
//  PurposeAndGoalsView.swift
//  blossom
//
//  Created by Aria Han on 6/21/24.
//
import SwiftUI

struct PurposeAndGoalsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Purpose and Goals Clarification")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Clarifying your purpose and setting meaningful goals are key aspects of existential therapy, helping you to find direction and meaning in life.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("How to Clarify Your Purpose and Goals")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Step 1: Reflect on Your Values
                    HStack(alignment: .top) {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Reflect on Your Values")
                                .font(.headline)
                                .bold()
                            Text("Consider what is truly important to you. Reflecting on your core values can provide a foundation for setting meaningful goals.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 2: Identify Your Strengths
                    HStack(alignment: .top) {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Identify Your Strengths")
                                .font(.headline)
                                .bold()
                            Text("Recognize your unique talents and strengths. Understanding these can help you set realistic and fulfilling goals.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 3: Set Specific Goals
                    HStack(alignment: .top) {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Set Specific Goals")
                                .font(.headline)
                                .bold()
                            Text("Define clear and specific goals that align with your values and strengths. Break them down into manageable steps.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 4: Visualize Your Success
                    HStack(alignment: .top) {
                        Image(systemName: "eye.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Visualize Your Success")
                                .font(.headline)
                                .bold()
                            Text("Imagine yourself achieving your goals. Visualization can boost motivation and help you stay focused on your path.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 5: Stay Flexible and Adapt
                    HStack(alignment: .top) {
                        Image(systemName: "arrow.2.circlepath")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Stay Flexible and Adapt")
                                .font(.headline)
                                .bold()
                            Text("Be prepared to adjust your goals as needed. Flexibility allows you to respond to new opportunities and challenges.")
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

struct PurposeAndGoalsView_Previews: PreviewProvider {
    static var previews: some View {
        PurposeAndGoalsView()
    }
}
