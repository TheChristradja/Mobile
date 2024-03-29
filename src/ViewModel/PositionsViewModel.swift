import SwiftUI

import Foundation
import Combine

class PositionsViewModel: ObservableObject {
    @Published var positions = [PositionModel]()

    func fetchUserOnPositions() {
        guard let url = RequestBuilder.getInstance().urlRequest().url else {
            return
        }

        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [PositionModel].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: &$positions)
    }


}