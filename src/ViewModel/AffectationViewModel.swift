import SwiftUI

import Foundation

class AffectationsService {
    @Published var affectations : [UserOnPositionModel] = []
    
    init() {
        RequestBuilder.getInstance().components.path = "/userOnPosition"
    }
    
    func getAffectations() {
        guard let url : URL = RequestBuilder.getInstance().urlRequest().url else {
            return
        }
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [UserOnPositionModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Error: \(error)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] affectations in
                guard let self = self else { return }
                self.affectations = affectations.filter { $0.status.rawValue == "affectation" }
            })
    }
                                            
    
                                            
                                            
    
    func add(affectation: UserOnPositionModel, completion: @escaping (Result<UserOnPositionModel, Error>) -> Void) {
        
        
        guard let _ = RequestBuilder.getInstance().components.url else{
            return
        }
        var request = RequestBuilder.getInstance().urlRequest()
        request.httpMethod = "post"
        
        do {
            request.httpBody = try JSONEncoder().encode(affectation)
        } catch {
            // Error: Unable to encode request parameters
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let data = data {
                let response : Result<UserOnPositionModel, Error> = Result {  try JSONDecoder().decode(UserOnPositionModel.self, from: data)
                }
                
                
                    completion(response)
                    
                    
                
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

