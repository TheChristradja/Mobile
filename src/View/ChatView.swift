import SwiftUI

struct ChatView: View { 
    var body: some View { 
        ZStack() { 
            VStack(alignment: .trailing, spacing: 8) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Yesterday 9:41")
                    .font(Font.custom("Lily Script One", size: 11))
                    .tracking(0.07)
                    .lineSpacing(13)
                    .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26)
                        .opacity(0.60))
                    HStack(alignment: .bottom, spacing: 0) {
                        HStack(alignment: .top, spacing: 0) {
                            Text("That heel turn sucked!")
                            .font(Font.custom("Lily Script One", size: 17))
                            .lineSpacing(22)
                            .foregroundColor(.white) }
                        .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12)) .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color(red: 0.27, green: 0.54, blue: 0.97))
                        .cornerRadius(18)
                        VStack(alignment:.leading, spacing: 0){
                            
                            VStack(spacing: 0) { }
                            .frame(width: 11) }
                        .frame(width: 0.10, height: 20)
                        .rotationEffect(.degrees(-180)) }
                    .frame(maxWidth: .infinity) }
                .frame(maxWidth: .infinity, minHeight: 59, maxHeight: 59)
                Text("Read 10:02")
                .font(Font.custom("Lily Script One", size: 11))
                .tracking(0.07)
                .lineSpacing(13)
                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.60)) }
            .frame(height: 80)
            .offset(x: 0, y: -201)
            VStack(alignment: .trailing, spacing: 8) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Yesterday 10:05")
                    .font(Font.custom("Lily Script One", size: 11))
                    .tracking(0.07)
                    .lineSpacing(13)
                    .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26)
                        .opacity(0.60))
                    HStack(alignment: .bottom, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            VStack(spacing: 0) { } 
                            .frame(width: 11) } 
                        .frame(width: 0.10, height: 20)
                        HStack(alignment: .top, spacing: 0) {
                            Text("Go fuck yourself")
                            .font(Font.custom("Lily Script One", size: 17)) 
                            .lineSpacing(22)
                            .foregroundColor(.black) }
                        .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12)) 
                        .frame(maxWidth: .infinity, maxHeight: .infinity) 
                        .background(Color(red: 0.91, green: 0.91, blue: 0.92)) 
                        .cornerRadius(18) } 
                    .frame(maxWidth: .infinity) } 
                .frame(maxWidth: .infinity, minHeight: 59, maxHeight: 59) } 
            .frame(height: 59) .offset(x: 0, y: -105.50)
            Rectangle() 
            .foregroundColor(.clear) 
            .frame(width: 393, height: 147) 
            .background(Color(red: 0.04, green: 0.09, blue: 0.39)) 
            .offset(x: 0, y: -352.50)
            Rectangle() 
            .foregroundColor(.clear) 
            .frame(width: 116, height: 76) 
            .background( AsyncImage(url: URL(string: "https://via.placeholder.com/116x76")) )
            .cornerRadius(30) 
            .overlay( RoundedRectangle(cornerRadius: 30) 
                .inset(by: 0.50) .stroke(.black, lineWidth: 0.50) ) 
            .offset(x: -113.50, y: -339) 
            .shadow( color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4 )
            Text("Adam Cole BayBay") 
            .font(Font.custom("Lily Script One", size: 20))
            .tracking(0.07) 
            .lineSpacing(13) 
            .foregroundColor(.white) 
            .offset(x: 73, y: -321.50) } 
        .frame(width: 393, height: 852) 
        .background(.white); } }
