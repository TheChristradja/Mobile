import SwiftUI

import Foundation

struct LoginResponse: Decodable {
    let ok : Int
    let token: String

}
