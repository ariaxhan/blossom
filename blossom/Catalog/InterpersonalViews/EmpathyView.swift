//
//  EmpathyView.swift
//  blossom
//
//  Created by Aria Han on 6/18/24.
//

import SwiftUI

struct EmpathyView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Empathy")
                        .font(.largeTitle).bold()
                        .padding(.top, 20)
                    
                    Text("Strategies for understanding and empathizing with others' feelings and experiences.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 15) {
                    Text("EMPATHY")
                        .font(.title2).bold()
                        .padding(.top, 20)
                    
                    AcronymView(acronym: ["E", "M", "P", "A", "T", "H", "Y"], meanings: [
                        "Engage actively: Pay full attention and actively listen to others.",
                        "Mirror emotions: Reflect back the emotions you perceive the other person is feeling.",
                        "Practice perspective-taking: Try to understand the situation from the other person's point of view.",
                        "Acknowledge feelings: Validate and acknowledge the emotions the other person is experiencing.",
                        "Think non-judgmentally: Suspend judgment and try to understand without evaluating or criticizing.",
                        "Hold space: Create a safe and supportive environment for the other person to express themselves.",
                        "Yes to emotions: Accept and respect the emotions expressed by the other person."
                    ])
                    .padding()
                    .background(Color.purple.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ChatView(initialPrompt: "Practice empathy-building scenarios").environmentObject(ChatViewModel())) {
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
            .padding()
        }
    }
}


struct EmpathyView_Previews: PreviewProvider {
    static var previews: some View {
        EmpathyView()
    }
}
