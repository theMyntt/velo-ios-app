//
//  VeloiOSAppApp.swift
//  VeloiOSApp
//
//  Created by Gabriel Araújo Lima on 30/07/25.
//

import SwiftUI

@main
struct VeloiOSAppApp: App {
    @StateObject var router = NavigationRouter()
    
    init() {
        TokenStore().deleteToken() // Temporarially
    }
    
    var body: some Scene {
        WindowGroup {
            MainAppView()
                .preferredColorScheme(.light)
                .environment(\.font, .body)
                .environmentObject(router)
//            NavigationStack(path: $router.path) {
//                MainAppView().navigationDestination(for: Route.self) { route in
//                    switch route {
//                    case .home:
//                        MainAppView()
//                    case .login:
//                        LoginView(router: router)
//                    }
//                }
//                .preferredColorScheme(.light)
//                .environment(\.font, .body)
//                .environmentObject(router)
//            }

        }
    }
}
