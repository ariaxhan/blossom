import SwiftUI

struct ProblemSolvingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Problem-Solving")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                
                Text("The ability to solve problems efficiently and calmly.")
                    .font(.body)
                    .foregroundColor(.black)
                
                Text("Skills")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.black)
                
                VStack(spacing: 20) {
                    
                    // Self-Reflection Image with NavigationLink
                    VStack {
                        NavigationLink(destination: SelfReflectionView()) {
                            VStack {
                                Image("self_reflection")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Self-Reflection")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Gestalt Two-Chair Image with NavigationLink
                    VStack {
                        NavigationLink(destination: GestaltTwoChairView()) {
                            VStack {
                                Image("gestalt_two_chair")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Gestalt Two-Chair")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Figure-Ground Analysis Image with NavigationLink
                    VStack {
                        NavigationLink(destination: FigureGroundAnalysisView()) {
                            VStack {
                                Image("figure_ground_analysis")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Figure-Ground Analysis")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Role-Playing Image with NavigationLink
                    VStack {
                        NavigationLink(destination: RolePlayingView()) {
                            VStack {
                                Image("role_playing")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Role-Playing")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.95, green: 0.9, blue: 1.0), Color(red: 0.8, green: 0.9, blue: 1.0)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        )
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProblemSolvingView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemSolvingView()
    }
}
