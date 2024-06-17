//
//  blossomApp.swift
//  blossom
//
//  Created by Aria Han on 6/16/24.
//
import SwiftUI
import Firebase

@main
struct blossomApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                RootView()
                    .environmentObject(ChatViewModel())
            }
        }
    }
}
