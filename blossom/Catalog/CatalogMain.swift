import SwiftUI

struct CatalogMain: View {
    @State private var showSignInView = false
    
    // Sample data (replace with your actual content)
    let categories = [
        ("Mindfulness", "mindfulness", AnyView(Mindfulness())),
        ("Interpersonal", "interpersonal", AnyView(Interpersonal())),
        ("Emotion Regulation", "emotionregulation", AnyView(EmotionRegulation())),
        ("Self-Soothing", "selfsoothing", AnyView(SelfSoothing())),
        ("Problem Solving", "problemsolving", AnyView(ProblemSolvingView())),
        ("Existential Reflections", "existential", AnyView(Existential()))
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                    ForEach(categories, id: \.0) { (title, imageName, destinationView) in
                        NavigationLink(destination: destinationView) {
                            VStack {
                                Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text(title)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                        }
                    }
                }
                .padding()
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 0.8, green: 0.6, blue: 0.8), Color(red: 0.5, green: 0.5, blue: 0.8)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
            )
            .navigationTitle("Skills Catalog")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: SettingsView(showSignInView: $showSignInView)) {
                        Image(systemName: "gearshape")
                            .foregroundColor(.white)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button(action: {
                            // Action for search button
                            print("Search button tapped")
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                        }
                        Button(action: {
                            // Action for heart button
                            print("Favorites button tapped")
                        }) {
                            Image(systemName: "heart")
                                .foregroundColor(.white)
                        }
                        Button(action: {
                            // Action for menu button
                            print("Menu button tapped")
                        }) {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            .fullScreenCover(isPresented: $showSignInView) {
                SignInEmailView(showSignInView: $showSignInView)
            }
            .navigationBarColor(backgroundColor: UIColor.clear, titleColor: UIColor.white)
        }
    }
}

struct CatalogMain_Previews: PreviewProvider {
    static var previews: some View {
        CatalogMain()
    }
}
