import SwiftUI

struct Interpersonal: View {
    var body: some View {
        ScrollView { // Allows scrolling if content exceeds screen height
            VStack(alignment: .center, spacing: 20) {
                Text("Interpersonal Effectiveness")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                
                Text("Interpersonal effectiveness involves navigating interactions skillfully to achieve mutually beneficial outcomes and maintain positive relationships.")
                    .font(.body)
                    .foregroundColor(.black)
                
                Text("Skills")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.black)
                
                
                VStack(spacing: 20) {
                    
                    VStack {
                        // Communication Image with NavigationLink
                        NavigationLink(destination: CommunicationView()) {
                            VStack {
                                Image("communication")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Communication")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Relationship Building Image
                    VStack {
                        NavigationLink(destination: RelationShipBuildingView()) {
                            VStack {
                                Image("relationshipbuilding")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Relationship Building")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Conflict Resolution Image
                    VStack {
                        NavigationLink(destination: ConflictResolutionView()) {
                            VStack {
                                Image("conflictresolution")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Conflict Resolution")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    // Empathy Image
                    VStack {
                        NavigationLink(destination: EmpathyView()) {
                            VStack {
                                Image("empathy")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                Text("Empathy")
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

struct Interpersonal_Previews: PreviewProvider {
    static var previews: some View {
        Interpersonal()
    }
}
