import SwiftUI

import Foundation

class LoginViewModel: ObservableObject {

    @Published var email: String = ""
    @Published var password: String = ""
    @ObservedObject var router: Router = Router()

    func login() {
        LoginAction(
            parameters: LoginRequest(
                email: email,
                password: password
            )
        ).call { response in
            // Login successful, navigate to the Home screen
            RequestBuilder.getInstance().token = response.token
        }

    }
}