import SwiftUI

struct IntenseView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Intense Emotion Regulation")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 20)
                    
                    Text("Essential for surviving crises and enduring emotional pain without making it worse:")
                        .font(.body)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 20) {
                    // ACCEPTS Section
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "a.circle.fill")
                                .foregroundColor(.red)
                                .font(.title)
                            Text("Distress Tolerance Skills: ACCEPTS")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        }
                        
                        Text("Activities, Contributing, Comparisons, Emotions, Pushing away, Thoughts, Sensations. Engage in activities or thoughts to temporarily distract yourself from the distress.")
                            .padding()
                        
                            .cornerRadius(10)
                    }
                    
                    // IMPROVE Section
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "i.circle.fill")
                                .foregroundColor(.red)
                                .font(.title)
                            Text("IMPROVE the Moment")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        }
                        
                        Text("Imagery, Meaning, Prayer, Relaxation, One thing in the moment, Vacation, Encouragement. Use techniques to improve your current moment and find some relief.")
                            .padding()
                        
                            .cornerRadius(10)
                    }
                    
                    // Pros and Cons Section
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "p.circle.fill")
                                .foregroundColor(.red)
                                .font(.title)
                            Text("Pros and Cons")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        }
                        
                        Text("Evaluate the pros and cons of tolerating distress versus acting on impulse. Weighing the outcomes can help in making better decisions during distressing times.")
                            .padding()
                        
                            .cornerRadius(10)
                    }
                }
                .padding()
                .cornerRadius(15)
                .padding(.horizontal)
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Text("Practice with AI")
                            .padding()
                            .background(Color.red)
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
    }
}

struct IntenseView_Previews: PreviewProvider {
    static var previews: some View {
        IntenseView()
    }
}
