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
                       if let _ = try? AuthenticationManager.shared.getAuthenticatedUser() {
                           CatalogMain() // Show CatalogMain if user is authenticated
                       } else {
                           AuthenticationView(showSignInView: $showSignInView) // Show AuthenticationView if not signed in
                       }
                   }
               }
               .onAppear {
                   let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
                   self.showSignInView = authUser == nil
               }
    }
}

#Preview {
    RootView()
}
