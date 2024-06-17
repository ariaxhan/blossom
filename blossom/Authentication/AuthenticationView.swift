//
//  AuthenticationView.swift
//  blossom
//
//  Created by Aria Han on 6/16/24.
//

import SwiftUI

@MainActor
struct AuthenticationView: View {
    var body: some View {
        VStack {
            NavigationLink {
                SignInEmailView()
            } label: {
                Text("Sign in with email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Sign In")
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AuthenticationView()
        }
    }
}

