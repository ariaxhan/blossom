//
//  DearManView.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct CommunicationView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView { // Make the content scrollable if it doesn't fit on the screen
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Communication")
                        .font(.largeTitle).bold()
                        .padding(.top, 20)
                    
                    Text("A structured approach for effective communication to get your needs met while maintaining healthy relationships.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 15) {
                    Text("DEAR MAN")
                        .font(.title2).bold()
                        .padding(.top, 20)
        
                    
                    AcronymView(acronym: ["D", "E", "A", "R", "M", "A", "N"], meanings: [
                        "Describe: Clearly and factually describe the situation or issue. Avoid judgmental language.",
                        "Express: Express your feelings and thoughts about the situation. Use 'I' statements.",
                        "Assert: Assert your needs or requests directly and clearly. Be concise and specific.",
                        "Reinforce: Reinforce the benefits of getting what you want or the positive outcomes. Explain why it's important.",
                        "Mindful: Stay focused on your goals. Avoid distractions and maintain your position.",
                        "Appear Confident: Use a confident tone and body language. Maintain eye contact and speak firmly.",
                        "Negotiate: Be willing to give to get. Offer alternative solutions and be open to compromise."
                    ])
                    .padding()
                    .background(Color.green.opacity(0.1))
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
        }
        .padding()
    }
}

struct AcronymView: View {
    let acronym: [String]
    let meanings: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(0..<acronym.count, id: \.self) { index in
                HStack(alignment: .top) {
                    Text("\(acronym[index]):")
                        .font(.headline)
                        .bold()
                        .frame(width: 30, alignment: .leading)
                    Text(meanings[index])
                        .font(.body)
                }
            }
        }
    }
}

struct CommunicationView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationView()
    }
}
