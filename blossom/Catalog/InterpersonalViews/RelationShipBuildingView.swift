import SwiftUI

struct RelationshipBuildingView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Relationship Building")
                        .font(.largeTitle).bold()
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    Text("Tips and strategies for fostering healthy relationships with others.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 15) {
                    Text("GIVE")
                        .font(.title2).bold()
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(alignment: .top) {
                            Text("G:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Be Gentle: Approach others in a gentle and respectful manner.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("I:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Act Interested: Show genuine interest in others' lives and experiences.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("V:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Validate: Acknowledge and validate others' feelings and perspectives.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("E:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Use an Easy Manner: Communicate in a friendly and approachable way.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(Color.blue.opacity(0.1))
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

struct RelationshipBuildingView_Previews: PreviewProvider {
    static var previews: some View {
        RelationshipBuildingView()
    }
}
