import SwiftUI

struct SelfSoothing: View {
    private let skills = [
        "Visual Soothing",
        "Auditory Soothing",
        "Olfactory Soothing",
        "Tactile Soothing",
        "Gustatory Soothing"
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Self-Soothing Techniques")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 20)
                
                Text("Using self-soothing techniques can help you calm down and regain emotional balance during stressful times.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                
                VStack(alignment: .leading, spacing: 15) {
                    // Visual Soothing
                    soothingSection(icon: "eye", iconColor: Color(red: 0.6, green: 0.8, blue: 1.0), title: "Visual Soothing", description: "Look at beautiful and calming images, such as nature scenes or art. Create a soothing visual environment around you.", backgroundColor: Color(red: 0.6, green: 0.8, blue: 1.0).opacity(0.1))
                    
                    // Auditory Soothing
                    soothingSection(icon: "ear", iconColor: Color(red: 0.8, green: 1.0, blue: 0.6), title: "Auditory Soothing", description: "Listen to calming music, nature sounds, or white noise to help relax your mind and body.", backgroundColor: Color(red: 0.8, green: 1.0, blue: 0.6).opacity(0.1))
                    
                    // Olfactory Soothing
                    soothingSection(icon: "nose", iconColor: Color(red: 1.0, green: 0.8, blue: 0.6), title: "Olfactory Soothing", description: "Use soothing scents like lavender, chamomile, or sandalwood through essential oils or candles to promote relaxation.", backgroundColor: Color(red: 1.0, green: 0.8, blue: 0.6).opacity(0.1))
                    
                    // Tactile Soothing
                    soothingSection(icon: "hand.raised", iconColor: Color(red: 0.8, green: 0.6, blue: 1.0), title: "Tactile Soothing", description: "Engage in activities that provide comforting touch, such as holding a soft blanket, taking a warm bath, or petting an animal.", backgroundColor: Color(red: 0.8, green: 0.6, blue: 1.0).opacity(0.1))
                    
                    // Gustatory Soothing
                    soothingSection(icon: "mouth", iconColor: Color(red: 1.0, green: 0.6, blue: 0.6), title: "Gustatory Soothing", description: "Enjoy soothing tastes like sipping herbal tea, eating a piece of your favorite chocolate, or savoring a comforting meal.", backgroundColor: Color(red: 1.0, green: 0.6, blue: 0.6).opacity(0.1))
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .padding(.horizontal)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Text("Practice with AI")
                            .padding()
                            .background(Color.blue.opacity(0.8))
                            .foregroundColor(.white)
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
    
    private func soothingSection(icon: String, iconColor: Color, title: String, description: String, backgroundColor: Color) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(iconColor)
                    .font(.title)
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            
            Text(description)
                .foregroundColor(.black)
                .padding()
                .background(backgroundColor)
                .cornerRadius(10)
        }
    }
}

struct SelfSoothing_Previews: PreviewProvider {
    static var previews: some View {
        SelfSoothing()
    }
}
