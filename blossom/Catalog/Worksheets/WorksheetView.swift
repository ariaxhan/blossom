//
//  WorksheetView.swift
//  blossom
//
//  Created by Aria Han on 6/22/24.
//
import SwiftUI

struct WorksheetView: View {
    @StateObject private var viewModel = WorksheetViewModel()
    @State private var currentQuestionIndex = 0
    @State private var userResponses: [String] = Array(repeating: "", count: 12)
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack {
            if viewModel.worksheets.isEmpty {
                Text("Loading worksheets...")
                    .onAppear {
                        viewModel.fetchWorksheets()
                    }
            } else {
                let worksheet = viewModel.worksheets.first!
                let questions = worksheet.questions
                
                VStack {
                    Text(worksheet.title)
                        .font(.largeTitle)
                        .padding()
                    
                    ProgressView(value: Double(currentQuestionIndex + 1), total: Double(questions.count))
                        .padding()
                    
                    Text(questions[currentQuestionIndex].text)
                        .font(.title2)
                        .padding()

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
                            Button("Previous") {
                                currentQuestionIndex -= 1
                            }
                            .padding()
                        }

                        if currentQuestionIndex < questions.count - 1 {
                            Button("Next") {
                                if !userResponses[currentQuestionIndex].isEmpty {
                                    currentQuestionIndex += 1
                                } else {
                                    showAlert = true
                                    alertMessage = "Please provide a response before proceeding."
                                }
                            }
                            .padding()
                        } else {
                            Button("Submit") {
                                if !userResponses[currentQuestionIndex].isEmpty {
                                    viewModel.saveResponses(worksheetId: worksheet.id!, responses: userResponses)
                                    showAlert = true
                                    alertMessage = "Worksheet completed and responses saved!"
                                } else {
                                    showAlert = true
                                    alertMessage = "Please provide a response before submitting."
                                }
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
    }
}

struct WorksheetView_Previews: PreviewProvider {
    static var previews: some View {
        WorksheetView()
    }
}
