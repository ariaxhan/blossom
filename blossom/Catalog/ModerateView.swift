import SwiftUI

struct ModerateView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Moderate Emotion Regulation")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Effectively managing moderate levels of emotional intensity involves recognizing your emotions and using practical strategies to maintain balance.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Strategies for Moderate Emotion Regulation")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Strategy 1: Mindfulness Practices
                    HStack(alignment: .top) {
                        Image(systemName: "leaf.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.yellow)
                        VStack(alignment: .leading) {
                            Text("Mindfulness Practices")
                                .font(.headline)
                                .bold()
                            Text("Engage in mindfulness practices like meditation or mindful breathing to stay grounded and aware of your emotions.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 2: Cognitive Reappraisal
                    HStack(alignment: .top) {
                        Image(systemName: "brain.head.profile")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.yellow)
                        VStack(alignment: .leading) {
                            Text("Cognitive Reappraisal")
                                .font(.headline)
                                .bold()
                            Text("Reframe negative thoughts into more positive or neutral ones to change your emotional response.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 3: Self-Compassion
                    HStack(alignment: .top) {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.yellow)
                        VStack(alignment: .leading) {
                            Text("Self-Compassion")
                                .font(.headline)
                                .bold()
                            Text("Practice self-compassion by being kind to yourself and recognizing that it's okay to feel emotions.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 4: Journaling
                    HStack(alignment: .top) {
                        Image(systemName: "book.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.yellow)
                        VStack(alignment: .leading) {
                            Text("Journaling")
                                .font(.headline)
                                .bold()
                            Text("Write about your emotions and experiences to gain insight and perspective.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 5: Relaxation Techniques
                    HStack(alignment: .top) {
                        Image(systemName: "bed.double.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.yellow)
                        VStack(alignment: .leading) {
                            Text("Relaxation Techniques")
                                .font(.headline)
                                .bold()
                            Text("Use relaxation techniques such as progressive muscle relaxation or guided imagery to reduce stress.")
                        }
                    }
                    .padding(.horizontal)
                }
                .padding()
    
                .cornerRadius(10)
                .padding(.horizontal)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Text("Practice with AI")
                            .padding()
                            .background(Color.yellow)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
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
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ModerateView_Previews: PreviewProvider {
    static var previews: some View {
        ModerateView()
    }
}
