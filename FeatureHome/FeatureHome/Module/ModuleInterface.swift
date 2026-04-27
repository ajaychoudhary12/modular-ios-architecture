//
//  ModuleInterface.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils
import Swinject

public protocol ModuleInterface: AnyObject {
    func openHomePage()
}

class HomeModuleInterfaceImpl: ModuleInterface {
    func openHomePage() {
        let service = Module.shared.di.container.resolve(HomeService.self)!
        service.fetchHome()
    }
}
