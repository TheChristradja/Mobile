import SwiftUI

class MyActivitiesViewModel{
    @Published var affectations = [UserOnPositionModel]()
    @Published var flexibles = [UserOnPositionModel]()


    func getByUserId(id: Int) {
        RequestBuilder.getInstance().components.path = "/userOnPosition/"+id.description
        guard let url = RequestBuilder.getInstance().urlRequest().url else {
            return
        }


        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [UserOnPositionModel].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: &$affectations)

    }



}