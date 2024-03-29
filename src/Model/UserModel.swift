import SwiftUI

struct UserModel: Codable, Identifiable {
    let id: Int
    let name, firstName, mail, tel: String
    let photo: String
    let isAdmin: Bool
    let password, username: String
    let position: [UserOnPositionModel]
    let referented: [PositionModel]
}
