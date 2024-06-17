//
//  RootView.swift
//  blossom
//
//  Created by Aria Han on 6/16/24.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView: Bool = false
    var body: some View {
        
        
        ZStack {
            NavigationStack {
                Text("Settings")
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSignInView){
            NavigationStack {
                AuthenticationView()
            }
        }
    }
}

#Preview {
    RootView()
}