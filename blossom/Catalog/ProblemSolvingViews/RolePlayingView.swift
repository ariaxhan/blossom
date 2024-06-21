//
//  RolePlayingView.swift
//  blossom
//
//  Created by Aria Han on 6/19/24.
//

import SwiftUI

struct RolePlayingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Role-Playing for Problem Solving")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Role-playing is an effective problem-solving strategy that involves simulating real-life scenarios to practice and improve skills such as empathy, communication, and decision-making.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Steps Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Steps to Effective Role-Playing")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Step 1: Define the Scenario
                    HStack(alignment: .top) {
                        Image(systemName: "doc.text.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Define the Scenario")
                                .font(.headline)
                                .bold()
                            Text("Clearly outline the scenario to be role-played, including the context and the roles involved.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 2: Assign Roles
                    HStack(alignment: .top) {
                        Image(systemName: "person.2.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Assign Roles")
                                .font(.headline)
                                .bold()
                            Text("Assign specific roles to participants. Each role should have a distinct perspective and objective.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 3: Act Out the Scenario
                    HStack(alignment: .top) {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Act Out the Scenario")
                                .font(.headline)
                                .bold()
                            Text("Participants act out their roles, focusing on realistic interactions and responses.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 4: Reflect on the Experience
                    HStack(alignment: .top) {
                        Image(systemName: "brain.head.profile")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Reflect on the Experience")
                                .font(.headline)
                                .bold()
                            Text("After the role-play, discuss what happened, how participants felt, and what they learned.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 5: Apply the Insights
                    HStack(alignment: .top) {
                        Image(systemName: "lightbulb.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Apply the Insights")
                                .font(.headline)
                                .bold()
                            Text("Use the insights gained from the role-playing session to address the actual problem and improve future interactions.")
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

struct RolePlayingView_Previews: PreviewProvider {
    static var previews: some View {
        RolePlayingView()
    }
}
