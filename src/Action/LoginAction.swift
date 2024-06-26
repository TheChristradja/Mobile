import SwiftUI

import Foundation

struct LoginAction {
    
    var parameters: LoginRequest
    
    func call(completion: @escaping (LoginResponse) -> Void) {
        
        
        
        
        
        RequestBuilder.getInstance().components.path = "/auth/login"
        
        
        
        guard let _ = RequestBuilder.getInstance().components.url else{
            return
        }
        var request = RequestBuilder.getInstance().urlRequest()
        request.httpMethod = "post"
        
        do {
            request.httpBody = try JSONEncoder().encode(parameters)
        } catch {
            // Error: Unable to encode request parameters
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let data = data {
                let response = try? JSONDecoder().decode(LoginResponse.self, from: data)
                
                if let response = response {
                    
                    completion(response)
                    
                    
                } else {
                    // Error: Unable to decode response JSON
                    print("Email ou mot de passe incorrect")
                }
            } else {
                // Error: API request failed
                
                if let error = error {
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}
