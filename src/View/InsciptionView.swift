import SwiftUI

struct InscriptionView: View {
    @ObservedObject var viewModel : InscriptionViewModel
    @EnvironmentObject var router : Router
    var body: some View { 
        ZStack() { 
            Rectangle()
            .foregroundColor(.clear) 
            .frame(width: 393, height: 147)
            .background(Color(red: 0.04, green: 0.09, blue: 0.39)) .offset(x: 0, y: -352.50)
            Text("Inscription") 
            .font(Font.custom("Lily Script One", size: 48))
            .lineSpacing(22)
            .foregroundColor(.white) 
            .offset(x: 0.50, y: -342)
            HStack(spacing: 10) { 
                Text("Jour") 
                .font(Font.custom("Akaya Telivigala", size: 20)) 
                .tracking(0.38)
                .lineSpacing(24) 
                .contextMenu(){
                    ForEach (viewModel.dayList){ day in
                        Button(action: {viewModel.selectedDay = day})
                        {Text(day.description)}
                    }
                }
                .foregroundColor(Color(red: 0, green: 0.48, blue: 1)) } 
            .padding(EdgeInsets(top: 18, leading: 16, bottom: 18, trailing: 16))
            
            .frame(width: 359)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96).opacity(0.70))
            .cornerRadius(13)
            .offset(x: 0, y: -176)
            HStack(spacing: 10) { 
                Text("Créneau") 
                .font(Font.custom("Akaya Telivigala", size: 20)) 
                .tracking(0.38)
                .lineSpacing(24) 
                .foregroundColor(Color(red: 0, green: 0.48, blue: 1)) } 
            .padding(EdgeInsets(top: 18, leading: 16, bottom: 18, trailing: 16))
            .contextMenu(){
                ForEach (viewModel.timeList){ time in
                    Button(action: {viewModel.selectedTime = time})
                    {Text(time.description)}
                }
            }
            .frame(width: 359)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96)
                .opacity(0.70)) 
            .cornerRadius(13) 
            .offset(x: 0, y: -43)
            HStack(spacing: 10) {
                Text("Activité")
                .font(Font.custom("Akaya Telivigala", size: 20))
                .tracking(0.38) 
                .lineSpacing(24)
                .foregroundColor(Color(red: 0, green: 0.48, blue: 1)) }
            .padding(EdgeInsets(top: 18, leading: 16, bottom: 18, trailing: 16)) 
            .contextMenu(){
                ForEach (viewModel.positionList){ position in
                    Button(action: {viewModel.selectedPosition = position})
                    {Text(position.name)}
                }
            }
            .frame(width: 359) 
            .background(Color(red: 0.96, green: 0.96, blue: 0.96).opacity(0.70))
            .cornerRadius(13) 
            .offset(x: 0, y: 90)
            Button(action: {viewModel.send()
                router.navigate(to: Router.Destination.MyActivities)
            }){ Text("S'inscrire")
                .font(Font.custom("Lily Script One", size: 17))
                .lineSpacing(22)
                .foregroundColor(.white) }
            .padding(EdgeInsets(top: 13, leading: 20, bottom: 13, trailing: 20))
            .background(Color(red: 0.20, green: 0.84, blue: 0.29)) 
            .cornerRadius(10)
            .offset(x: -7.50, y: 363) 
            } 
        
        .frame(width: 393, height: 852)
        .background(.white) 
        .shadow( color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4 ); } }

