import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject {
    
    func signOut() throws {
        try AuthenticationManager.shared.signOut()
    }
    
    func resetPassword() async throws {
        let authUser = try AuthenticationManager.shared.getAuthenticatedUser()
        
        guard let email = authUser.email else {
            throw URLError(.fileDoesNotExist)
        }
        
        try await AuthenticationManager.shared.resetPassword(email: email)
    }
}

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "gearshape.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(Color(red: 0.6, green: 0.8, blue: 1.0))
                .padding(.top, 40)
            
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.bottom, 20)
            
            List {
                Button(action: {
                    Task {
                        do {
                            try viewModel.signOut()
                            showSignInView = true
                        } catch {
                            print(error)
                        }
                    }
                }) {
                    HStack {
                        Image(systemName: "arrow.right.square")
                            .foregroundColor(Color(red: 1.0, green: 0.6, blue: 0.6))
                        Text("Log out")
                            .font(.headline)
                            .foregroundColor(Color(red: 1.0, green: 0.6, blue: 0.6))
                    }
                }
                .padding()
                .background(Color.red.opacity(0.1))
                .cornerRadius(10)
                
                Button(action: {
                    Task {
                        do {
                            try await viewModel.resetPassword()
                            print("Password reset!")
                        } catch {
                            print(error)
                        }
                    }
                }) {
                    HStack {
                        Image(systemName: "key.fill")
                            .foregroundColor(Color(red: 0.6, green: 0.8, blue: 1.0))
                        Text("Reset password")
                            .font(.headline)
                            .foregroundColor(Color(red: 0.6, green: 0.8, blue: 1.0))
                    }
                }
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
            }
            .listStyle(InsetGroupedListStyle())
            
            Spacer()
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.95, green: 0.9, blue: 1.0), Color(red: 0.8, green: 0.9, blue: 1.0)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        )
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingsView(showSignInView: .constant(false))
        }
    }
}
