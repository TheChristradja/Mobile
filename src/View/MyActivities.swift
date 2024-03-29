import SwiftUI

struct MyActivitiesView: View {
    var body: some View {
        VStack {
            Text("Mes activités")
                .font(Font.custom("Lily Script One", size: 48))
                .lineSpacing(22)
                .foregroundColor(.white)
                .padding(.top, 16)
            
            Text("Créneaux sur lesquels je suis flexible:")
                .font(Font.custom("Luxurious Roman", size: 24))
                .lineSpacing(22)
                .foregroundColor(.black)
                .padding(.top, 16)
            
            FlexibleActivitiesList()
            
            Text("Activités auxquelles je suis inscrit:")
                .font(Font.custom("Luxurious Roman", size: 24))
                .lineSpacing(22)
                .foregroundColor(.black)
                .padding(.top, 16)
            
            RegisteredActivitiesList()
        }
        .padding()
        .background(Color.white)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4)
    }
}
struct FlexibleActivitiesList: View {
    var body: some View {
        List {
            ActivityRow(title: "Accueil Samedi 14-16")
            ActivityRow(title: "Animation Dimanche 14-16")
            ActivityRow(title: "Cuisine Samedi 12-14")
        }
        .listStyle(PlainListStyle())
        .background(Color.white)
        .cornerRadius(14)
        .padding(.top, 8)
        .frame(height: 132)
        .padding(.bottom, 16)
    }
}

struct RegisteredActivitiesList: View {
    var body: some View {
        List {
            ActivityRow(title: "Samedi 14-16 3 activités")
            ActivityRow(title: "Samedi 12-14 5 activités")
            ActivityRow(title: "Dimanche 14-16 3 activités")
        }
        .listStyle(PlainListStyle())
        .background(Color.white)
        .cornerRadius(14)
        .padding(.bottom, 16)
    }
}

struct MyActivityRow: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(Font.custom("Lily Script One", size: 17))
                .lineSpacing(22)
                .foregroundColor(.black)
            Spacer()
        }
        .padding(.vertical, 11)
        .padding(.horizontal, 16)
        .background(Color.white)
        .overlay(
            Rectangle()
                .stroke(Color(red: 0.78, green: 0.78, blue: 0.78), lineWidth: 0.25)
        )
    }
}

struct MyActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        MyActivitiesView()
    }
}