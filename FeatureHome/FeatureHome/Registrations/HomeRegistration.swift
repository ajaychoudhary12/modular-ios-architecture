//
//  HomeRegistration.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils
import Swinject
import Core

class HomeRegistration: Registration {
    static func register(in container: Container) {
        container.register(HomeService.self) { resolver in
            let apiClient = resolver.resolve(APIClient.self)!
            return HomeServiceImpl(apiClient: apiClient)
        }
        
        container.register(HomeViewModel.self) { resolver in
            let service = resolver.resolve(HomeService.self)!
            let navigator = resolver.resolve(HomeNavigator.self)!
            return HomeViewModel(service: service, navigator: navigator)
        }
    }
}
