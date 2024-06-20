import SwiftUI

struct EmpathyView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Empathy")
                        .font(.largeTitle).bold()
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    Text("Strategies for understanding and empathizing with others' feelings and experiences.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 15) {
                    Text("EMPATHY")
                        .font(.title2).bold()
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(alignment: .top) {
                            Text("E:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Engage actively: Pay full attention and actively listen to others.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("M:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Mirror emotions: Reflect back the emotions you perceive the other person is feeling.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("P:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Practice perspective-taking: Try to understand the situation from the other person's point of view.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("A:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Acknowledge feelings: Validate and acknowledge the emotions the other person is experiencing.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("T:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Think non-judgmentally: Suspend judgment and try to understand without evaluating or criticizing.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("H:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Hold space: Create a safe and supportive environment for the other person to express themselves.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("Y:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Yes to emotions: Accept and respect the emotions expressed by the other person.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(Color.purple.opacity(0.1))
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

struct EmpathyView_Previews: PreviewProvider {
    static var previews: some View {
        EmpathyView()
    }
}
