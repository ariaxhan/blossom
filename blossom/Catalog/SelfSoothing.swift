//
//  SelfSoothing.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct SelfSoothing: View {
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
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "eye")
                                .foregroundColor(.blue)
                                .font(.title)
                            Text("Visual Soothing")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        }
                        
                        Text("Look at beautiful and calming images, such as nature scenes or art. Create a soothing visual environment around you.")
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(10)
                    }
                    
                    // Auditory Soothing
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "ear")
                                .foregroundColor(.green)
                                .font(.title)
                            Text("Auditory Soothing")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                        
                        Text("Listen to calming music, nature sounds, or white noise to help relax your mind and body.")
                            .padding()
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(10)
                    }
                    
                    // Olfactory Soothing
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "nose")
                                .foregroundColor(.orange)
                                .font(.title)
                            Text("Olfactory Soothing")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.orange)
                        }
                        
                        Text("Use soothing scents like lavender, chamomile, or sandalwood through essential oils or candles to promote relaxation.")
                            .padding()
                            .background(Color.orange.opacity(0.1))
                            .cornerRadius(10)
                    }
                    
                    // Tactile Soothing
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "hand.raised")
                                .foregroundColor(.purple)
                                .font(.title)
                            Text("Tactile Soothing")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.purple)
                        }
                        
                        Text("Engage in activities that provide comforting touch, such as holding a soft blanket, taking a warm bath, or petting an animal.")
                            .padding()
                            .background(Color.purple.opacity(0.1))
                            .cornerRadius(10)
                    }
                    
                    // Gustatory Soothing
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "mouth")
                                .foregroundColor(.red)
                                .font(.title)
                            Text("Gustatory Soothing")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        }
                        
                        Text("Enjoy soothing tastes like sipping herbal tea, eating a piece of your favorite chocolate, or savoring a comforting meal.")
                            .padding()
                            .background(Color.red.opacity(0.1))
                            .cornerRadius(10)
                    }
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
        .background(Color(UIColor.systemGray6))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SelfSoothing_Previews: PreviewProvider {
    static var previews: some View {
        SelfSoothing()
    }
}
