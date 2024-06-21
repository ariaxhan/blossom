//
//  FigureGroundAnalysisView.swift
//  blossom
//
//  Created by Aria Han on 6/19/24.
//

import SwiftUI

struct FigureGroundAnalysisView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Figure-Ground Analysis")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Figure-ground analysis is a problem-solving strategy that helps distinguish between the main elements (figure) and the background context (ground) to gain clarity and focus.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Steps to Apply Figure-Ground Analysis")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Step 1: Identify the Figure
                    HStack(alignment: .top) {
                        Image(systemName: "eye.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.purple)
                        VStack(alignment: .leading) {
                            Text("Identify the Figure")
                                .font(.headline)
                                .bold()
                            Text("Determine the main element or focus of the problem. This is the 'figure' that needs to be addressed or understood.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 2: Identify the Ground
                    HStack(alignment: .top) {
                        Image(systemName: "rectangle.3.offgrid.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.purple)
                        VStack(alignment: .leading) {
                            Text("Identify the Ground")
                                .font(.headline)
                                .bold()
                            Text("Identify the background context or environment that surrounds the figure. This is the 'ground' that influences the figure.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 3: Separate Figure from Ground
                    HStack(alignment: .top) {
                        Image(systemName: "scissors.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.purple)
                        VStack(alignment: .leading) {
                            Text("Separate Figure from Ground")
                                .font(.headline)
                                .bold()
                            Text("Mentally or visually separate the figure from the ground to focus on each element individually. This helps in understanding their roles and impacts.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 4: Analyze the Figure
                    HStack(alignment: .top) {
                        Image(systemName: "magnifyingglass.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.purple)
                        VStack(alignment: .leading) {
                            Text("Analyze the Figure")
                                .font(.headline)
                                .bold()
                            Text("Examine the figure in detail. Understand its characteristics, behaviors, and how it interacts with the ground.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 5: Analyze the Ground
                    HStack(alignment: .top) {
                        Image(systemName: "map.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.purple)
                        VStack(alignment: .leading) {
                            Text("Analyze the Ground")
                                .font(.headline)
                                .bold()
                            Text("Examine the ground. Understand the broader context, environment, and how it influences or supports the figure.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 6: Integrate Insights
                    HStack(alignment: .top) {
                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.purple)
                        VStack(alignment: .leading) {
                            Text("Integrate Insights")
                                .font(.headline)
                                .bold()
                            Text("Combine the insights gained from analyzing the figure and the ground. Use this integrated understanding to solve the problem effectively.")
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
                            .background(Color.purple)
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

struct FigureGroundAnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        FigureGroundAnalysisView()
    }
}
