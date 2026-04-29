//
//  ModularApp.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 26/04/26.
//

import SwiftUI
import FeatureHome
import FeatureProfile
import Core

@main
struct ModularApp: App {
    @StateObject private var router: AppRouter
    
    init() {
        let router = AppRouter()
        _router = StateObject(wrappedValue: router)
        
        AppDIProvider.initialize(router: router)
        
        setupModules()
    }
    
    private func setupModules() {
        Core.Module.initialize(with: AppDIProvider.shared.di)
        FeatureHome.Module.initialize(with: AppDIProvider.shared.di)
        FeatureProfile.Module.initialize(with: AppDIProvider.shared.di)
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                FeatureHome.Module.shared.moduleInterface.makeHomeView()
                    .navigationDestination(for: AppRoute.self) { route in
                        switch route {
                        case .home:
                            FeatureHome.Module.shared.moduleInterface.makeHomeView()
                        case .profile(let input):
                            FeatureProfile.Module.shared.moduleInterface.makeProfileView(input: input)
                        }
                    }
                    .onAppear {
                        Core.Module.shared.moduleInterface.getApiClient().request(endpoint: "https://example.com")
                    }
            }
        }
    }
}
