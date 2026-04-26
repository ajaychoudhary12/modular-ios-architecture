//
//  HomeRegistration.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils
import Swinject

class HomeRegistration: Registration {
    static func register(in container: Container) {        
        container.register(HomeService.self) { _ in
            HomeServiceImpl()
        }
    }
}

protocol HomeService {
    func fetchHome()
}

class HomeServiceImpl: HomeService {
    func fetchHome() {
        
    }
}
