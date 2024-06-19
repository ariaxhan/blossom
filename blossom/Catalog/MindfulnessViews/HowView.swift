//
//  HowView.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct HowView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView { // Make the content scrollable if it doesn't fit on the screen
            VStack(alignment: .leading, spacing: 20) {

                
                VStack(alignment: .center, spacing: 10) {
                    Text("How Skills")
                        .font(.largeTitle).bold()
                        .padding(.top, 20)
                    
                    Text("Essential for living fully and effectively by guiding how we approach our thoughts, feelings, and actions:")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                // Non-Judgmental Section
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.purple)
                        Text("Non-Judgmental")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.purple)
                    }
                    Text("Observe and describe experiences without evaluating them as good or bad. Focus on the facts and consequences rather than labeling or judging.")
                        .padding()
                        .background(Color.purple.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .padding(.top, 10)
                
                // One Mindful Section
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "brain.head.profile")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                        Text("One Mindful")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.orange)
                    }
                    Text("Be fully present in the current moment, avoiding distractions from past regrets or future worries. Engage with your surroundings and activities with open awareness and curiosity.")
                        .padding()
                        .background(Color.orange.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .padding(.top, 10)
                
                // Effective Section
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "checklist")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        Text("Effective")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.blue)
                    }
                    Text("Prioritize actions that achieve desired outcomes over proving a point. Stay flexible and adapt your approach to what works best in each situation.")
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .padding(.top, 10)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ChatView(initialPrompt: "Run through a practice scenario about how skills").environmentObject(ChatViewModel())) {
                        Text("Practice with AI")
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .padding()
    }
}

struct HowView_Previews: PreviewProvider {
    static var previews: some View {
        HowView()
    }
}
