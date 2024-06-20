import SwiftUI

struct CommunicationView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Communication")
                        .font(.largeTitle).bold()
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    Text("A structured approach for effective communication to get your needs met while maintaining healthy relationships.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 15) {
                    Text("DEAR MAN")
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
                            Text("Describe: Clearly and factually describe the situation or issue. Avoid judgmental language.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("E:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Express: Express your feelings and thoughts about the situation. Use 'I' statements.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("A:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Assert: Assert your needs or requests directly and clearly. Be concise and specific.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("R:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Reinforce: Reinforce the benefits of getting what you want or the positive outcomes. Explain why it's important.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("M:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Mindful: Stay focused on your goals. Avoid distractions and maintain your position.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("A:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Appear Confident: Use a confident tone and body language. Maintain eye contact and speak firmly.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                        
                        HStack(alignment: .top) {
                            Text("N:")
                                .font(.headline)
                                .bold()
                                .frame(width: 30, alignment: .leading)
                                .foregroundColor(.black)
                            Text("Negotiate: Be willing to give to get. Offer alternative solutions and be open to compromise.")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(Color.green.opacity(0.1))
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

struct CommunicationView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationView()
    }
}
