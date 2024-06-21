//
//  GestaltTwoChairView.swift
//  blossom
//
//  Created by Aria Han on 6/19/24.
//
import SwiftUI

struct GestaltTwoChairView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Gestalt Two-Chair Technique")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("The Gestalt two-chair technique is a powerful problem-solving strategy that involves role-playing to explore different perspectives and resolve internal conflicts.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("How to Use the Gestalt Two-Chair Technique")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Step 1: Set Up the Chairs
                    HStack(alignment: .top) {
                        Image(systemName: "chair.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.green)
                        VStack(alignment: .leading) {
                            Text("Set Up the Chairs")
                                .font(.headline)
                                .bold()
                            Text("Place two chairs facing each other. These chairs represent different parts of yourself or different perspectives.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 2: Identify the Conflict
                    HStack(alignment: .top) {
                        Image(systemName: "exclamationmark.triangle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.green)
                        VStack(alignment: .leading) {
                            Text("Identify the Conflict")
                                .font(.headline)
                                .bold()
                            Text("Identify the internal conflict or issue you want to explore. This could be a decision you need to make or an emotional struggle.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 3: Role-Play Each Perspective
                    HStack(alignment: .top) {
                        Image(systemName: "person.crop.circle.badge.checkmark.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.green)
                        VStack(alignment: .leading) {
                            Text("Role-Play Each Perspective")
                                .font(.headline)
                                .bold()
                            Text("Sit in one chair and express the thoughts and feelings of one part of yourself. Then switch to the other chair and respond from the other perspective.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 4: Dialogue and Resolution
                    HStack(alignment: .top) {
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.green)
                        VStack(alignment: .leading) {
                            Text("Dialogue and Resolution")
                                .font(.headline)
                                .bold()
                            Text("Continue the dialogue between the two perspectives. The goal is to reach a resolution or deeper understanding of the conflict.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 5: Reflect on the Process
                    HStack(alignment: .top) {
                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.green)
                        VStack(alignment: .leading) {
                            Text("Reflect on the Process")
                                .font(.headline)
                                .bold()
                            Text("After the role-play, take time to reflect on what you learned and how you can apply this new understanding to your problem.")
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
                            .background(Color.green)
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

struct GestaltTwoChairView_Previews: PreviewProvider {
    static var previews: some View {
        GestaltTwoChairView()
    }
}
