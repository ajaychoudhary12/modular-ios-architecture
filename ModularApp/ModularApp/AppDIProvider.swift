//
//  AppDIProvider.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils
import FeatureHome
import Swinject

final class AppDIProvider {
    private static var _shared: AppDIProvider?
    
    public static var shared: AppDIProvider {
        guard let instance = _shared else {
            fatalError("AppDIProvider not initialized")
        }
        return instance
    }
        
    let di: DI
    
    private init(router: AppRouter) {
        let appDI = DI.root()
        let container = appDI.container
        
        appDI.register(registrations: [
            BaseUtilsRegistration.self,
            NavigationRegistration.self
        ])
        
        // AppRouter Registration
        container.register(AppRouter.self) { _ in router }
            .inObjectScope(.container) // Enables shared access
        
        container.register(HomeNavigator.self) { resolver in
            let router = resolver.resolve(AppRouter.self)!
            return HomeNavigatorImpl(router: router)
        }

        self.di = appDI
    }
    
    static func initialize(router: AppRouter) {
        _shared = AppDIProvider(router: router)
    }
}
