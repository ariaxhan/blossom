import SwiftUI

struct ConflictResolutionView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Conflict Resolution")
                        .font(.largeTitle).bold()
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    Text("Strategies for resolving conflicts peacefully and constructively.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 15) {
                    Text("DE-ESCALATE")
                        .font(.title2).bold()
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(alignment: .top) {
                            Text("D:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Determine the issue: Identify the root cause of the conflict.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("E:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Express concerns: Share your feelings and concerns calmly.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("E:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Empathize: Understand the emotions and motivations of all parties involved.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("S:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Suggest solutions: Brainstorm and propose mutually agreeable solutions.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("C:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Collaborate: Work together to implement the chosen solution.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("A:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Agree to disagree: Accept that not all conflicts can be fully resolved, and it's okay to have differing opinions.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("L:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Learn and grow: Reflect on the conflict to learn from it and strengthen relationships.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("A:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Apologize: If appropriate, apologize for any mistakes or misunderstandings.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("T:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Take a break: Sometimes, taking a break can give both parties time to cool down and think clearly.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("E:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Explore possibilities: Consider alternative solutions or compromises.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(Color.orange.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Text("Practice with AI")
                            .padding()
                            .background(Color.pink.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
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
    }
}

struct ConflictResolutionView_Previews: PreviewProvider {
    static var previews: some View {
        ConflictResolutionView()
    }
}
