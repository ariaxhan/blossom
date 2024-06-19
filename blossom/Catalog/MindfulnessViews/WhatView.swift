//
//  WhatView.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct WhatView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView { // Make the content scrollable if it doesn't fit on the screen
            VStack(alignment: .leading, spacing: 20) {
             
                VStack(alignment: .center, spacing: 10) {
                    Text("What Skills")
                        .font(.largeTitle).bold()
                        .padding(.top, 20)
                    
                    Text("Help you live fully by encouraging you to observe, describe, and participate in the present moment.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                // Observe Section
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "eye")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.yellow)
                        Text("Observe")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.yellow)
                    }
                    Text("Pay attention to events, emotions, and thoughts with awareness, without trying to change them.")
                        .padding()
                        .background(Color.yellow.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .padding(.top, 10)
                
                // Describe Section
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "pencil.and.outline")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.pink)
                        Text("Describe")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.pink)
                    }
                    Text("Use words to label events, identify emotions, and recognize thoughts, focusing on facts rather than judgments.")
                        .padding()
                        .background(Color.pink.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .padding(.top, 10)
                
                // Participate Section
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "figure.walk")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        Text("Participate")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.blue)
                    }
                    Text("Immerse yourself fully in the current activity, being spontaneous and giving your complete attention to the task at hand.")
                        .padding()
                        .background(Color.blue.opacity(0.1))
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

struct WhatView_Previews: PreviewProvider {
    static var previews: some View {
        WhatView()
    }
}
