import SwiftUI

struct EmotionRegulation: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background gradient
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 0.95, green: 0.9, blue: 1.0), Color(red: 0.8, green: 0.9, blue: 1.0)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .center, spacing: 20) {
                        Text("Emotion Regulation")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.black)
                        
                        Text("The ability to manage and respond to emotional experiences in a healthy and adaptive way.")
                            .font(.body)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        
                        // Thermometer with sections
                        VStack {
                            ZStack(alignment: .bottom) {
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.gray.opacity(0.2))
                                    .frame(width: 100, height: 400)
                                
                                VStack(spacing: 0) {
                                    // Section Intense
                                    NavigationLink(destination: IntenseView()) {
                                        Rectangle()
                                            .fill(Color(red: 1.0, green: 0.8, blue: 0.8))
                                            .frame(height: 100)
                                            .overlay(Text("Intense").foregroundColor(.black).bold())
                                    }
                                    
                                    // Section High
                                    NavigationLink(destination: HighView()) {
                                        Rectangle()
                                            .fill(Color(red: 1.0, green: 0.9, blue: 0.7))
                                            .frame(height: 100)
                                            .overlay(Text("High").foregroundColor(.black).bold())
                                    }
                                    
                                    // Section Moderate
                                    NavigationLink(destination: ModerateView()) {
                                        Rectangle()
                                            .fill(Color(red: 1.0, green: 1.0, blue: 0.7))
                                            .frame(height: 100)
                                            .overlay(Text("Moderate").foregroundColor(.black).bold())
                                    }
                                    
                                    // Section Calm
                                    NavigationLink(destination: CalmView()) {
                                        Rectangle()
                                            .fill(Color(red: 0.7, green: 0.9, blue: 1.0))
                                            .frame(height: 100)
                                            .overlay(Text("Calm").foregroundColor(.black).bold())
                                    }
                                }
                                .frame(width: 100) // Set width of the thermometer
                            }
                        }
                        .padding()
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct EmotionRegulation_Previews: PreviewProvider {
    static var previews: some View {
        EmotionRegulation()
    }
}
