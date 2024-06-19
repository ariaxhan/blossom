//
//  ConflictResolutionView.swift
//  blossom
//
//  Created by Aria Han on 6/18/24.
//

import SwiftUI

struct ConflictResolutionView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Conflict Resolution")
                        .font(.largeTitle).bold()
                        .padding(.top, 20)
                    
                    Text("Strategies for resolving conflicts peacefully and constructively.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 15) {
                    Text("DE-ESCALATE")
                        .font(.title2).bold()
                        .padding(.top, 20)
                    
                    AcronymView(acronym: ["D", "E", "E", "S", "C", "A", "L", "A", "T", "E"], meanings: [
                        "Determine the issue: Identify the root cause of the conflict.",
                        "Express concerns: Share your feelings and concerns calmly.",
                        "Empathize: Understand the emotions and motivations of all parties involved.",
                        "Suggest solutions: Brainstorm and propose mutually agreeable solutions.",
                        "Collaborate: Work together to implement the chosen solution.",
                        "Agree to disagree: Accept that not all conflicts can be fully resolved, and it's okay to have differing opinions.",
                        "Learn and grow: Reflect on the conflict to learn from it and strengthen relationships.",
                        "Apologize: If appropriate, apologize for any mistakes or misunderstandings.",
                        "Take a break: Sometimes, taking a break can give both parties time to cool down and think clearly.",
                        "Explore possibilities: Consider alternative solutions or compromises."
                    ])
                    .padding()
                    .background(Color.orange.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                VStack {
                    Spacer()
                    NavigationLink(destination:  ContentView()) {
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

struct ConflictResolutionView_Previews: PreviewProvider {
    static var previews: some View {
        ConflictResolutionView()
    }
}
