import SwiftUI

struct UserOnPositionModel: Codable {
    let benevole: UserModel
    let benevoleId: Int
    let poste: PositionModel
    let positionId: Int
    let slot: SlotModel
    let creneauId: Int
    let status: AffectationStatus
}
