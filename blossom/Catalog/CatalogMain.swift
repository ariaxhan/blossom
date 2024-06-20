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
                                    .foregroundColor(.black)
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
                    gradient: Gradient(colors: [Color(red: 0.9, green: 0.8, blue: 1.0), Color(red: 0.8, green: 0.9, blue: 1.0), Color(red: 0.9, green: 0.9, blue: 1.0)]),
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
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button(action: {
                            // Action for search button
                            print("Search button tapped")
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.black)
                        }
                        Button(action: {
                            // Action for heart button
                            print("Favorites button tapped")
                        }) {
                            Image(systemName: "heart")
                                .foregroundColor(.black)
                        }
                        Button(action: {
                            // Action for menu button
                            print("Menu button tapped")
                        }) {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            .fullScreenCover(isPresented: $showSignInView) {
                SignInEmailView(showSignInView: $showSignInView)
            }
            .navigationBarColor(backgroundColor: UIColor.clear, titleColor: UIColor.black)
        }
    }
}

struct CatalogMain_Previews: PreviewProvider {
    static var previews: some View {
        CatalogMain()
    }
}

struct NavigationBarModifier: ViewModifier {
    var backgroundColor: UIColor?
    var titleColor: UIColor?
    
    init(backgroundColor: UIColor?, titleColor: UIColor?) {
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = backgroundColor
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .black]
        coloredAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .black]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = titleColor
    }
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
    }
}

extension View {
    func navigationBarColor(backgroundColor: UIColor?, titleColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor))
    }
}
