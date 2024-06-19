import Foundation
import Firebase

class ChatSetup {
    static let shared = ChatSetup()
    
    private init() {}

    private func fetchAccessToken(completion: @escaping (String?) -> Void) {
        guard let user = Auth.auth().currentUser else {
            print("No authenticated user found.")
            completion(nil)
            return
        }

        user.getIDTokenForcingRefresh(true) { token, error in
            if let error = error {
                print("Error fetching token: \(error)")
                completion(nil)
                return
            }
            print("Fetched Token: \(token ?? "No Token")")
            completion(token)
        }
    }

    func predictWithVertexAI(prompt: String, completion: @escaping (String?) -> Void) {
        fetchAccessToken { accessToken in
            guard let accessToken = accessToken else {
                print("No access token received.")
                completion(nil)
                return
            }

            let url = URL(string: "https://us-west2-aiplatform.googleapis.com/v1/projects/blossom-1205/locations/us-west2/models/gemini-1.5-flash:predict")!
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization")
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")

            let parameters: [String: Any] = [
                "instances": [["content": prompt]],
                "parameters": ["temperature": 0.7, "max_output_tokens": 200]
            ]

            request.httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [])

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    print("Error: \(error)")
                    completion(nil)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    print("No response from server")
                    completion(nil)
                    return
                }

                print("HTTP Response Code: \(httpResponse.statusCode)")
                if let data = data, let responseString = String(data: data, encoding: .utf8) {
                    print("Response Data: \(responseString)")
                } else {
                    print("No data received or data could not be parsed.")
                }

                if httpResponse.statusCode == 401 {
                    print("Unauthorized request. Invalid or expired token.")
                    completion(nil)
                    return
                }

                guard let data = data else {
                    print("No data received")
                    completion(nil)
                    return
                }

                if let responseJSON = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let predictions = responseJSON["predictions"] as? [[String: Any]],
                   let prediction = predictions.first?["content"] as? String {
                    completion(prediction)
                } else {
                    print("Invalid response data")
                    completion(nil)
                }
            }

            task.resume()
        }
    }
}
