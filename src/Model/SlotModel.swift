import SwiftUI

struct SlotModel: Codable, Identifiable, CustomStringConvertible {
    let id: Int
    let time : Time
    let jour: String
    let affectations: [UserOnPositionModel]

    var description: String{
        return jour + ": " + time.description
    }
}
