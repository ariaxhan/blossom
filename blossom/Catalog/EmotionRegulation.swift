import SwiftUI

struct EmotionRegulation: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    Text("Emotion Regulation")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("The ability to manage and respond to emotional experiences in a healthy and adaptive way.")
                        .font(.body)
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
                                        .fill(Color.red)
                                        .frame(height: 100)
                                        .overlay(Text("Intense").foregroundColor(.white).bold())
                                }
                                
                                // Section High
                                NavigationLink(destination: HighView()) {
                                    Rectangle()
                                        .fill(Color.orange)
                                        .frame(height: 100)
                                        .overlay(Text("High").foregroundColor(.white).bold())
                                }
                                
                                // Section Moderate
                                NavigationLink(destination: ModerateView()) {
                                    Rectangle()
                                        .fill(Color.yellow)
                                        .frame(height: 100)
                                        .overlay(Text("Moderate").foregroundColor(.black).bold())
                                }
                                
                                // Section Calm
                                NavigationLink(destination: CalmView()) {
                                    Rectangle()
                                        .fill(Color.blue)
                                        .frame(height: 100)
                                        .overlay(Text("Calm").foregroundColor(.white).bold())
                                }
                            }
                            .frame(width: 100) // Set width of the thermometer
                        }
                    }
                    .padding()
                }
                .padding()
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
