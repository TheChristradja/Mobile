import SwiftUI
class PositionInfoViewModel{
    @Published var position : PositionModel?
    var id : Int

    init(id : Int){
        self.id = id
        RequestBuilder.getInstance().components.path = "/position"
    }


func getByID()  {
    guard let url = RequestBuilder.getInstance().urlRequest().url else {
        return
    }

        // Example:
        URLSession.shared.dataTaskPublisher(for: URL(string: "position/(id)")!)
        .map { $0.data }
        .decode(type: PositionModel.self, decoder: JSONDecoder())
        .sink(receiveCompletion: { completion in
        switch completion {
        case .failure(let error):
        print("Error: (error)")
        case .finished:
        break
        }
        }, receiveValue: { [weak self] position in
        self?.position = position
        })

    }
}