//
//  ExistentialAnxietyView.swift
//  blossom
//
//  Created by Aria Han on 6/21/24.
//
import SwiftUI

struct ExistentialAnxietyView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Managing Existential Anxiety")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Existential anxiety arises from concerns about the meaning of life, freedom, isolation, and death. Here are some skills to help manage these feelings.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Skills to Combat Existential Anxiety")
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
                            Text("Consider what is truly important to you. Reflecting on your core values can provide a sense of purpose and direction.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 2: Embrace Uncertainty
                    HStack(alignment: .top) {
                        Image(systemName: "questionmark.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Embrace Uncertainty")
                                .font(.headline)
                                .bold()
                            Text("Accept that uncertainty is a part of life. Embracing it can reduce anxiety and help you live more fully in the present.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 3: Connect with Others
                    HStack(alignment: .top) {
                        Image(systemName: "person.2.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Connect with Others")
                                .font(.headline)
                                .bold()
                            Text("Building meaningful relationships can provide support and reduce feelings of isolation. Reach out and connect with loved ones.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 4: Engage in Meaningful Activities
                    HStack(alignment: .top) {
                        Image(systemName: "sparkles")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Engage in Meaningful Activities")
                                .font(.headline)
                                .bold()
                            Text("Participate in activities that align with your values and bring you joy. This can enhance your sense of purpose.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Step 5: Practice Mindfulness
                    HStack(alignment: .top) {
                        Image(systemName: "leaf.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Practice Mindfulness")
                                .font(.headline)
                                .bold()
                            Text("Mindfulness can help you stay grounded in the present moment, reducing anxiety about the future and past.")
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

struct ExistentialAnxietyView_Previews: PreviewProvider {
    static var previews: some View {
        ExistentialAnxietyView()
    }
}
