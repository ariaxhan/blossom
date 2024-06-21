import SwiftUI

struct CalmView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Calm Emotion Regulation")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                
                Text("Maintaining a state of calm involves using strategies that promote relaxation and reduce stress, helping you stay centered and composed.")
                    .font(.body)
                    .padding(.horizontal)
                
                // Strategies Section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Strategies for Staying Calm")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    // Strategy 1: Deep Breathing Exercises
                    HStack(alignment: .top) {
                        Image(systemName: "wind")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Deep Breathing Exercises")
                                .font(.headline)
                                .bold()
                            Text("Practice deep breathing exercises to slow your heart rate and induce relaxation. Focus on slow, deep breaths in and out.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 2: Progressive Muscle Relaxation
                    HStack(alignment: .top) {
                        Image(systemName: "person.crop.circle.fill.badge.checkmark")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Progressive Muscle Relaxation")
                                .font(.headline)
                                .bold()
                            Text("Progressively tense and then relax each muscle group in your body, starting from your toes and working up to your head.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 3: Meditation and Mindfulness
                    HStack(alignment: .top) {
                        Image(systemName: "brain.head.profile")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Meditation and Mindfulness")
                                .font(.headline)
                                .bold()
                            Text("Engage in meditation and mindfulness practices to stay present and reduce stress. Use guided meditations or mindfulness apps.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 4: Gentle Physical Activity
                    HStack(alignment: .top) {
                        Image(systemName: "figure.walk")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Gentle Physical Activity")
                                .font(.headline)
                                .bold()
                            Text("Participate in gentle physical activities like yoga, tai chi, or a leisurely walk to help calm your mind and body.")
                        }
                    }
                    .padding(.horizontal)
                    
                    // Strategy 5: Aromatherapy
                    HStack(alignment: .top) {
                        Image(systemName: "flame.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Aromatherapy")
                                .font(.headline)
                                .bold()
                            Text("Use calming scents like lavender, chamomile, or sandalwood through essential oils or candles to promote relaxation.")
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
                            .background(Color.blue)
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
}

struct CalmView_Previews: PreviewProvider {
    static var previews: some View {
        CalmView()
    }
}
