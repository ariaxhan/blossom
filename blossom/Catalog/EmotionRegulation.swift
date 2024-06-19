import SwiftUI

struct EmotionRegulation: View {
    var body: some View {
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
                            .fill(Color.gray)
                            .frame(width: 100, height: 450)
                        
                        VStack(spacing: 0) {
                            // Section Intense with rounded top corners
                            Button(action: {
                                print("Intense section tapped")
                                // Add your navigation or action code here
                            }) {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color.red)
                                    .frame(height: 100)
                                    .overlay(Text("Intense").foregroundColor(.white).bold())
                                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                            }
                            
                            // Section High
                            Button(action: {
                                print("High section tapped")
                                // Add your navigation or action code here
                            }) {
                                Rectangle()
                                    .fill(Color.orange)
                                    .frame(height: 100)
                                    .overlay(Text("High").foregroundColor(.white).bold())
                            }
                            
                            // Section Moderate
                            Button(action: {
                                print("Moderate section tapped")
                                // Add your navigation or action code here
                            }) {
                                Rectangle()
                                    .fill(Color.yellow)
                                    .frame(height: 100)
                                    .overlay(Text("Moderate").foregroundColor(.black).bold())
                            }
                            
                            // Section Calm completely round and larger
                            Button(action: {
                                print("Calm section tapped")
                                // Add your navigation or action code here
                            }) {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 150)
                                    .overlay(Text("Calm").foregroundColor(.white).bold())
                                    .offset(y: 25) // Adjust to overlap bottom
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

struct EmotionRegulation_Previews: PreviewProvider {
    static var previews: some View {
        EmotionRegulation()
    }
}
