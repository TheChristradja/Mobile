import SwiftUI


struct LoginScreen: View {

    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    @EnvironmentObject var router : Router
    var body: some View {
        VStack {

            Spacer()

            VStack {
                TextField(
                    "Adresse email",
                    text: $viewModel.email
                )
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding(.top, 20)

                Divider()

                SecureField(
                    "Mot de passe",
                    text: $viewModel.password
                )
                .padding(.top, 20)

                Divider()
            }

            Spacer()

            Button(action: {

                viewModel.login()
                router.navigate(to: Router.Destination.ActivitiesList)

                })
            {Text("Connexion")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
            }
            .padding(30)
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}