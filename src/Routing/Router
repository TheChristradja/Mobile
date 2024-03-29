import SwiftUI

final class Router: ObservableObject {

    public enum Destination: Codable, Hashable { 
        case MyActivities
        case ActivitiesList
        case Activity(name : String)
        case Chat(userName : String)
        case Login
        case Inscription

    }

    @Published var currentDestination : Destination?

    func navigate(to destination: Destination) {
        currentDestination = destination
    }

    func navigateBack() {
        currentDestination = nil
    }

    func navigateToRoot() {
        currentDestination = nil
    }
}
