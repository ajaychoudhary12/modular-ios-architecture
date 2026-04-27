//
//  NavigationRegistration.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 27/04/26.
//

import Swinject
import BaseUtils
import FeatureHome

final class NavigationRegistration: Registration {
    static func register(in container: Container) {
        container.register(AppRouter.self) { _ in fatalError("Router must be injected") }
            .inObjectScope(.container)

        container.register(HomeNavigator.self) { resolver in
            let router = resolver.resolve(AppRouter.self)!
            return HomeNavigatorImpl(router: router)
        }
    }
}
