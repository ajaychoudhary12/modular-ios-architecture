//
//  ModuleInterface.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils

public protocol ModuleInterface: AnyObject {
    func openHomePage()
}

class HomeModuleInterfaceImpl: ModuleInterface {
    private let di: DI
    
    init(di: DI) {
        self.di = di
    }
    
    func openHomePage() {
        
    }
}
