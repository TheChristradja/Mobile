import SwiftUI

struct ActivityInfoView: View { 
    @EnvironmentObject var router : Router
    var body: some View { 
        ZStack() { 
            Rectangle() 
            .foregroundColor(.clear) 
            .frame(width: 393, height: 148) .background(Color(red: 0.04, green: 0.09, blue: 0.39)) .offset(x: 0, y: -352) 
            Text("Poste: Accueil") 
            .font(Font.custom("Lily Script One", size: 17)) .lineSpacing(22)
            .foregroundColor(.white)
            .offset(x: -0.50, y: -329.50) 
            ZStack() {
                Text("Description: Accueillir les visiteurs")
                    .font(Font.custom("Lily Script One", size: 17))
                    .lineSpacing(22)
                    .foregroundColor(.black) 
                    .offset(x: 0 , y: -159)
                Spacer()
                Text("Référent: Toto\n")
                    .font(Font.custom("Lily Script One", size: 17))
                    .lineSpacing(22) 
                    .foregroundColor(.black)
                    .offset(x: 0, y: -162)
            }


            HStack(spacing: 10) { 
                Button(action: {router.navigate(to: Router.Destination.Inscription)})
                {Text("S’inscrire") .font(Font.custom("Lily Script One", size: 17)) .lineSpacing(22)
                .foregroundColor(.white) } }
            .padding(EdgeInsets(top: 13, leading: 20, bottom: 13, trailing: 20)) 
            .background(Color(red: 0, green: 0.48, blue: 1)) .cornerRadius(10)
            .offset(x: -7, y: 202) } 
        .frame(width: 393, height: 852)
        .background(.white);

    } }
