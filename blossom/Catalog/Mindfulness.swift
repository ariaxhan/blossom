import SwiftUI

struct Mindfulness: View {
    var body: some View {
        ScrollView { // Allows scrolling if content exceeds screen height
            VStack(alignment: .center, spacing: 20) {
                Text("Mindfulness")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                
                Text("Mindfulness is the practice of paying attention to the present moment with openness and without judgment. It involves being aware of thoughts, feelings, bodily sensations, and the environment to reduce stress and improve well-being.")
                    .font(.body)
                    .foregroundColor(.black)
                
                Text("Skills")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.black)
                
                
                VStack(spacing: 20) {
                    
                    VStack {
                        // Wise Mind Image with NavigationLink
                        NavigationLink(destination: WiseMindView()) {
                            VStack {
                                Image("wise_mind")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Wise Mind")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // How Image
                    VStack {
                        NavigationLink(destination: HowView()) {
                            VStack {
                                Image("how")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("How")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // What Image
                    VStack {
                        NavigationLink(destination: WhatView()) {
                            VStack {
                                Image("what")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("What")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            .padding() // Add padding around content
        }
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

struct Mindfulness_Previews: PreviewProvider {
    static var previews: some View {
        Mindfulness()
    }
}
