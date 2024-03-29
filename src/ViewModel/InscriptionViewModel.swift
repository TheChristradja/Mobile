import SwiftUI

class InscriptionViewModel : ObservableObject{
    @Published var selectedTime : Time!
    @Published var selectedDay : DayModel!
    @Published var selectedPosition : PositionModel!
    
    @Published var timeList = [Time(id: 0, debut: "10", fin: "12"), Time(id: 1, debut: "12", fin: "14"),Time(id: 2, debut: "14", fin: "16")]
    @Published var dayList = [DayModel(id: 0, day: .Saturday), DayModel(id: 1, day: .Sunday)]
    @Published var positionList = [PositionModel(id: 0, name: "Animation", details: "Animer", referent: UserModel(id: 0, name: "", firstName: "", mail: "", tel: "", photo: "", isAdmin: false, password: "", username: "", position: [], referented: []), referentId: 0, benevoles: []),PositionModel(id: 1, name: "Accueil", details: "Accueillir les visiteurs", referent: UserModel(id: 0, name: "", firstName: "", mail: "", tel: "", photo: "", isAdmin: false, password: "", username: "", position: [], referented: []), referentId: 0, benevoles: [])]
    
    init(){
        getPositions()
    }
    
    func getSlots(completion: @escaping ([SlotModel]) -> Void) {
        RequestBuilder.getInstance().components.path = "/creneau"
        guard let _ = RequestBuilder.getInstance().components.url else{
            return 
        }
        var request = RequestBuilder.getInstance().urlRequest()
        request.httpMethod = "get"
        
        
        
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let data = data {
                print(data.description)
                let response = try? JSONDecoder().decode([SlotModel].self, from: data)
                
                if let response = response {
                    
                    completion(response)
                    
                    
                } else {
                    // Error: Unable to decode response JSON
                    print("Error: Unable to decode response JSON")
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
        
    
    func getPositions()  {
        RequestBuilder.getInstance().components.path = "/position"
        guard let _ = RequestBuilder.getInstance().components.url else{
            return 
        }
        var request = RequestBuilder.getInstance().urlRequest()
        request.httpMethod = "get"
        
        /*
        print(RequestBuilder.getInstance().token)
        print(RequestBuilder.urlrequest().url)
         */
        let task = URLSession.shared.dataTask(with: request.url!) { data, _, error in
            if let data = data {
                print(String(data : data, encoding: .utf8))
                let response = try? JSONDecoder().decode([PositionModel].self, from: data)
                
                if let response = response {
                    
                    self.positionList = response
                    
                } else {
                    // Error: Unable to decode response JSON
                    if let error = error{
                        print(error)
                    }
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
    
    
    func send()  {
        guard let selectedDay = selectedDay, let selectedTime = selectedTime, let selectedPosition = selectedPosition else{
            return
        }
        
        
        let parameters = UserOnPositionDTO(userId: 1, positionId: selectedPosition.id, slotId: 1, status: "afffectation" )
        
        
        RequestBuilder.getInstance().components.path = "userOnPosition"
        
        
        
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
                let response = try? JSONDecoder().decode(UserOnPositionModel.self, from: data)
                
                if let response = response {
                    
                    print(response)                    
                    
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