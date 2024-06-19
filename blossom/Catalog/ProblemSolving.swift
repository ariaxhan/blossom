//
//  ProblemSolving.swift
//  blossom
//
//  Created by Aria Han on 6/17/24.
//

import SwiftUI

struct ProblemSolvingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Problem-Solving")
                    .font(.largeTitle)
                    .bold()
                
                Text("The ability to solve problems efficiently and calmly.")
                    .font(.body)
                
                Text("Skills")
                    .font(.title2)
                    .bold()
                
                VStack(spacing: 20) {
                    
                    // Self-Reflection Image with NavigationLink
                    VStack {
                        NavigationLink(destination: SelfReflectionView()) {
                            VStack {
                                Image("self_reflection")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Self-Reflection")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Gestalt Two-Chair Image with NavigationLink
                    VStack {
                        NavigationLink(destination: GestaltTwoChairView()) {
                            VStack {
                                Image("gestalt_two_chair")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Gestalt Two-Chair")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Figure-Ground Analysis Image with NavigationLink
                    VStack {
                        NavigationLink(destination: FigureGroundAnalysisView()) {
                            VStack {
                                Image("figure_ground_analysis")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Figure-Ground Analysis")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Role-Playing Image with NavigationLink
                    VStack {
                        NavigationLink(destination: RolePlayingView()) {
                            VStack {
                                Image("role_playing")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Role-Playing")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct ProblemSolvingView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemSolvingView()
    }
}
