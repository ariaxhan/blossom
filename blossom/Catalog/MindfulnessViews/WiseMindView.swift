//
//  WiseMindView.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct WiseMindView: View {
    var body: some View {
        ScrollView { // Make the content scrollable if it doesn't fit on the screen
            VStack(alignment: .center, spacing: 20) {
                           Text("Wise Mind")
                               .font(.largeTitle).bold()

                           Text("Represents the balance between emotional intuition and logical reasoning.")

                           // Image Section
                           Image("wiseminddiagram")
                               .resizable()
                               .scaledToFit()
                               .padding()

                           // Definition of Wise Mind
                           Text("A wise mind is the state of mind where one can access inner wisdom to make decisions that are both emotionally satisfying and rationally sound.")
                               .multilineTextAlignment(.center)

                           // Understanding Wise Mind Section
                           VStack(alignment: .leading, spacing: 10) {
                               Text("Understanding Wise Mind:")
                                   .font(.title2)
                                   .bold()
                               Text("The mind is often divided into three states: the emotional mind, the rational mind, and the wise mind. The emotional mind is driven by feelings and impulses, often reacting to situations without considering the consequences. The rational mind, on the other hand, relies solely on logic, facts, and reason, sometimes ignoring emotional needs and intuition. The wise mind integrates both these aspects, allowing a person to make decisions that are informed by both emotion and reason.")
                           }

                           // How to Practice Wise Mind Section
                           VStack(alignment: .leading, spacing: 10) {
                               Text("How to Practice Wise Mind:")
                                   .font(.title2)
                                   .bold()
                               Text("1. Mindfulness:")
                                   .font(.title3)
                                   .bold()
                               Text("Practicing mindfulness helps in becoming aware of the present moment without judgment. This awareness allows you to observe your thoughts and feelings as they are, creating a space to respond thoughtfully rather than react impulsively.")
                               Text("2. Observing and Describing:")
                                   .font(.title3)
                                   .bold()
                               Text("Take time to observe your thoughts and emotions without immediately reacting to them. Describe them to yourself in a non-judgmental way. For instance, instead of saying, 'I'm angry and it's bad,' you might say, 'I notice that I'm feeling angry.'")
                               Text("1. Mindfulness: Practicing mindfulness helps in becoming aware of the present moment without judgment. This awareness allows you to observe your thoughts and feelings as they are, creating a space to respond thoughtfully rather than react impulsively.")
                           }
                       }
                       .padding()
                   }
    }
}

#Preview {
    WiseMindView()
}
