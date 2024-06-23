import SwiftUI

struct WiseMindView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView { // Make the content scrollable if it doesn't fit on the screen
            VStack(alignment: .leading, spacing: 20) {
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Wise Mind")
                        .font(.largeTitle).bold()
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    Text("Represents the balance between emotional intuition and logical reasoning.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
                
                // Image Section
                Image("wiseminddiagram")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                // Definition of Wise Mind
                Text("A wise mind is the state of mind where one can access inner wisdom to make decisions that are both emotionally satisfying and rationally sound.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                
                // Understanding Wise Mind Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("Understanding Wise Mind:")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.black)
                    Text("The mind is often divided into three states: the emotional mind, the rational mind, and the wise mind. The emotional mind is driven by feelings and impulses, often reacting to situations without considering the consequences. The rational mind, on the other hand, relies solely on logic, facts, and reason, sometimes ignoring emotional needs and intuition. The wise mind integrates both these aspects, allowing a person to make decisions that are informed by both emotion and reason.")
                        .padding()
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .foregroundColor(.black)
                }
                
                // How to Practice Wise Mind Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("How to Practice Wise Mind:")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.black)
                    Group {
                        Text("1. Mindfulness:")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                        Text("Practicing mindfulness helps in becoming aware of the present moment without judgment. This awareness allows you to observe your thoughts and feelings as they are, creating a space to respond thoughtfully rather than react impulsively.")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    
                    Group {
                        Text("2. Observing and Describing:")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                        Text("Take time to observe your thoughts and emotions without immediately reacting to them. Describe them to yourself in a non-judgmental way. For instance, instead of saying, 'I'm angry and it's bad,' you might say, 'I notice that I'm feeling angry.'")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    
                    Group {
                        Text("3. Balancing Emotion and Logic:")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                        Text("When faced with a decision or a problem, consciously consider both emotional and logical perspectives. Ask yourself what your emotions are telling you and what the facts and logic suggest. Aim to find a middle ground that respects both sides.")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    
                    Group {
                        Text("4. Taking a Pause:")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                        Text("When emotions are high, it’s important to take a moment to pause and breathe. This pause allows your rational mind to catch up and provide a more balanced perspective.")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    
                    Group {
                        Text("5. Practicing Self-Compassion:")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                        Text("Be kind to yourself when emotions are intense. Recognize that it’s normal to have strong feelings and that it’s okay to take time to process them.")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    
                    Group {
                        Text("6. Seeking Balance in Daily Decisions:")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                        Text("Start with small decisions and practice finding the wise mind approach. Over time, this practice will become more natural and can be applied to larger, more significant decisions.")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    
                    VStack {
                        Spacer()
                        
                        NavigationLink(destination: WorksheetView()) {
                            Text("Practice Worksheet")
                                .padding()
                                .background(Color.blue.opacity(0.8))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.bottom, 10)
                        
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

struct WiseMindView_Previews: PreviewProvider {
    static var previews: some View {
        WiseMindView()
    }
}
