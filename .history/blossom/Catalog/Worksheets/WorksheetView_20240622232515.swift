import SwiftUI

struct WorksheetView: View {
    @StateObject private var viewModel = WorksheetViewModel()
    @State private var currentQuestionIndex = 0
    @State private var userResponses: [String] = []
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack {
            if viewModel.worksheets.isEmpty {
                LoadingView()
                    .onAppear {
                        viewModel.fetchWorksheets()
                    }
            } else {
                WorksheetContentView(
                    worksheet: viewModel.worksheets.first!,
                    currentQuestionIndex: $currentQuestionIndex,
                    userResponses: $userResponses,
                    showAlert: $showAlert,
                    alertMessage: $alertMessage,
                    saveResponses: viewModel.saveResponses
                )
            }
        }
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

struct LoadingView: View {
    var body: some View {
        Text("Loading worksheets...")
    }
}

struct WorksheetContentView: View {
    var worksheet: Worksheet
    @Binding var currentQuestionIndex: Int
    @Binding var userResponses: [String]
    @Binding var showAlert: Bool
    @Binding var alertMessage: String
    var saveResponses: (String, [String]) -> Void

    var body: some View {
        let questions = worksheet.questions
        
        VStack {
            if userResponses.count != questions.count {
                // fix error type () cannot conform to view
                DispatchQueue.main.async {
                    userResponses = Array(repeating: "", count: questions.count)
                }
            }
            
            Text(worksheet.title)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
            
            ProgressView(value: Double(currentQuestionIndex + 1), total: Double(questions.count))
                .padding()
            
            Text(questions[currentQuestionIndex])
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.3))
                .cornerRadius(10)
                .padding(.horizontal)
            
            TextField("Your response", text: Binding(
                get: {
                    userResponses[currentQuestionIndex]
                },
                set: {
                    userResponses[currentQuestionIndex] = $0
                }
            ))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal)
            .submitLabel(currentQuestionIndex == questions.count - 1 ? .done : .next)
            .onSubmit {
                if currentQuestionIndex < questions.count - 1 {
                    currentQuestionIndex += 1
                } else {
                    showAlert = true
                    alertMessage = "Worksheet completed!"
                }
            }
            
            HStack {
                if currentQuestionIndex > 0 {
                    Button(action: {
                        currentQuestionIndex -= 1
                    }) {
                        Text("Previous")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }

                if currentQuestionIndex < questions.count - 1 {
                    Button(action: {
                        if !userResponses[currentQuestionIndex].isEmpty {
                            currentQuestionIndex += 1
                        } else {
                            showAlert = true
                            alertMessage = "Please provide a response before proceeding."
                        }
                    }) {
                        Text("Next")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                } else {
                    Button(action: {
                        if !userResponses[currentQuestionIndex].isEmpty {
                            saveResponses(worksheet.id!, userResponses)
                            showAlert = true
                            alertMessage = "Worksheet completed and responses saved!"
                        } else {
                            showAlert = true
                            alertMessage = "Please provide a response before submitting."
                        }
                    }) {
                        Text("Submit")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
        .padding()
    }
}

struct WorksheetView_Previews: PreviewProvider {
    static var previews: some View {
        WorksheetView()
    }
}
