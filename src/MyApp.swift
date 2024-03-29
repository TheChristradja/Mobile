import SwiftUI


@main
struct MyApp: App {
    @ObservedObject var requestBuilder : RequestBuilder{
        didSet{
            if let currentDestination = router.currentDestination{
                destinationView(for: currentDestination)
            }      
        }
            
        }
    
    @ObservedObject var router = Router()
    
    init(){
        requestBuilder = RequestBuilder.getInstance()
    }
    
    
    var body: some Scene {
        WindowGroup {
            contentView
                .environmentObject(router)
        }
    }
    
    @ViewBuilder
    var contentView: some View {
        if let destination = router.currentDestination {
            
                destinationView(for: destination)
            
        } else {
            HomeScreen()
        }
    }
    
    @ViewBuilder
    func destinationView(for destination: Router.Destination) -> some View {
        switch destination {
        case .ActivitiesList:
            PositionsView()
        case .Activity(name: "Accueil"):
            ActivityInfoView()
        case .Chat(userName: "Toto"):
            ChatView() 
        case .MyActivities:
            MyActivitiesView()
        case .Inscription:
            InscriptionView(viewModel: InscriptionViewModel())
        default:
            LoginScreen()
        }
        
    
}
}
