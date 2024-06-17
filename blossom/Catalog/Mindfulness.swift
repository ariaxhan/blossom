//
//  Mindfulness.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct Mindfulness: View {
    var body: some View {
           ScrollView { // Allows scrolling if content exceeds screen height
               VStack(alignment: .leading, spacing: 20) {
                   Text("Mindfulness")
                       .font(.largeTitle)
                       .bold()

                   Text("Mindfulness is the practice of paying attention to the present moment with openness and without judgment. It involves being aware of thoughts, feelings, bodily sensations, and the environment to reduce stress and improve well-being.")
                       .font(.body)

                   Text("Skills")
                       .font(.title2)
                       .bold()


                   VStack(spacing: 20) {
                       
                       VStack {
                           // Wise Mind Image
                           Image("wise_mind")
                               .resizable()
                               .scaledToFit()
                               .cornerRadius(10)
                           Text("Wise Mind")
                               .font(.headline)
                       }
                       
                       // How Image
                       VStack {
                        
                           Image("how")
                               .resizable()
                               .scaledToFit()
                               .cornerRadius(10)
                           Text("How")
                               .font(.headline)
                       }

                       // What Image
                       VStack {
                           Image("what")
                               .resizable()
                               .scaledToFit()
                               .cornerRadius(10)
                           Text("What")
                               .font(.headline)
                       }
                   }
               }
               .padding() // Add padding around content
           }
           .navigationBarTitleDisplayMode(.inline)
           // Add other desired modifiers like .navigationTitle
       }
   }

   struct Mindfulness_Previews: PreviewProvider {
       static var previews: some View {
           Mindfulness()
       }
   }