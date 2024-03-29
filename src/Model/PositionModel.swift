import SwiftUI

struct PositionModel: Codable, Identifiable {
    let id: Int
    let name, details: String
    let referent: UserModel
    let referentId: Int
    let benevoles: [UserOnPositionDTO]
}
