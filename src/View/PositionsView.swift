import SwiftUI

struct PositionsView: View {
    @EnvironmentObject var router : Router
    var body: some View {
        VStack {
            Text("ActivitÃ©s")
                .font(Font.custom("Lily Script One", size: 48))
                .lineSpacing(22)
                .foregroundColor(.white)
                .padding(.top, 16)
            ActivitiesList()
        }
        .padding()
        .background(Color.white)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4)
        
        Button(action:{
            router.navigate(to: Router.Destination.Inscription)
        }){
            Text("S'inscrire")
            
        }
    }
}

struct ActivitiesList: View {
    var body: some View {
        List {
            ActivityRow(title: "Accueil")
            ActivityRow(title: "Cuisine")
        }
        .listStyle(PlainListStyle())
        .background(Color.white)
        .cornerRadius(14)
        .padding(.top, 8)
    }
}
