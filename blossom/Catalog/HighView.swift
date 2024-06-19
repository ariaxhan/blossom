import SwiftUI

struct HighView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("High Emotion Regulation")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Managing high levels of emotional intensity can be challenging, but using the right strategies can help you maintain control and respond effectively.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Strategies for High Emotion Regulation")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Strategy 1: Deep Breathing
                    HStack(alignment: .top) {
                        Image(systemName: "lungs.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                        VStack(alignment: .leading) {
                            Text("Deep Breathing")
                                .font(.headline)
                                .bold()
                            Text("Engage in deep breathing exercises to calm your nervous system and reduce emotional intensity.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 2: Grounding Techniques
                    HStack(alignment: .top) {
                        Image(systemName: "globe")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                        VStack(alignment: .leading) {
                            Text("Grounding Techniques")
                                .font(.headline)
                                .bold()
                            Text("Use grounding techniques to anchor yourself in the present moment and prevent emotional overwhelm.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 3: Positive Visualization
                    HStack(alignment: .top) {
                        Image(systemName: "eye.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                        VStack(alignment: .leading) {
                            Text("Positive Visualization")
                                .font(.headline)
                                .bold()
                            Text("Visualize positive outcomes or calming scenes to shift your focus away from distressing emotions.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 4: Physical Activity
                    HStack(alignment: .top) {
                        Image(systemName: "figure.walk")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                        VStack(alignment: .leading) {
                            Text("Physical Activity")
                                .font(.headline)
                                .bold()
                            Text("Engage in physical activities like walking or stretching to release built-up tension and energy.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 5: Talking to a Supportive Person
                    HStack(alignment: .top) {
                        Image(systemName: "person.3.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                        VStack(alignment: .leading) {
                            Text("Talking to a Supportive Person")
                                .font(.headline)
                                .bold()
                            Text("Share your feelings with a trusted friend or family member to gain perspective and emotional support.")
                        }
                    }
                    .padding(.horizontal)
                }
                .padding()
                .background(Color.orange.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Text("Practice with AI")
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HighView_Previews: PreviewProvider {
    static var previews: some View {
        HighView()
    }
}
