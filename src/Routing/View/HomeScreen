import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var router: Router
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.clear)

                .frame(width: 332, height: 195)
                .background( Image("Ressource d'image/Ressource d'image") 
            )
                .cornerRadius(30)
                .offset(x: -0.50, y: -134.50)
                .shadow( color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4 )
            HStack(spacing: 0) { 
                Button( action:{router.navigate(to: Router.Destination.Login)})
                {
                    Text("Se connecter").font(Font.custom("Lily Script One", size:17))
                    .lineSpacing(22)
                    .foregroundColor(.white)
                }
            }
                    .padding(EdgeInsets(top: 13, leading: 20, bottom: 13, trailing: 20))
                    .background(Color(red: 0.14, green: 0.54, blue: 0.24))
                    .cornerRadius(10)

                    .offset(x: -3, y: 24) 

        }
                .frame(width: 393, height: 852)
                .background(Color(red: 0.04, green: 0.09, blue: 0.39));

}




}
﻿
