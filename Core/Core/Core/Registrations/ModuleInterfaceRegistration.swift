//
//  ModuleRegistration.swift
//  Core
//
//  Created by Ajay Choudhary on 27/04/26.
//

import BaseUtils
import Swinject

class ModuleInterfaceRegistration: Registration {
    static func register(in container: Container) {
        container.register(ModuleInterface.self) { _ in
            CoreModuleInterfaceImpl()
        }
    }
}
