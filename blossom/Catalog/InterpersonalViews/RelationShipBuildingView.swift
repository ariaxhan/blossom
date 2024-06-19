//
//  RelationshipBuildingView.swift
//  blossom
//
//  Created by Aria Han on 6/18/24.
//

import SwiftUI

struct RelationShipBuildingView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Relationship Building")
                        .font(.largeTitle).bold()
                        .padding(.top, 20)
                    
                    Text("Tips and strategies for fostering healthy relationships with others.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 15) {
                    Text("GIVE")
                        .font(.title2).bold()
                        .padding(.top, 20)
                    
                    AcronymView(acronym: ["G", "I", "V", "E"], meanings: [
                        "Be Gentle: Approach others in a gentle and respectful manner.",
                        "Act Interested: Show genuine interest in others' lives and experiences.",
                        "Validate: Acknowledge and validate others' feelings and perspectives.",
                        "Use an Easy Manner: Communicate in a friendly and approachable way."
                    ])
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ChatView(initialPrompt: "Practice relationship-building scenarios").environmentObject(ChatViewModel())) {
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


struct RelationShipBuildingView_Previews: PreviewProvider {
    static var previews: some View {
        RelationShipBuildingView()
    }
}
