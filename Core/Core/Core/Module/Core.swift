//
//  Core.swift
//  Core
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils
import Swinject

public final class Module {
    public static var name = "Core"
    private static var _shared: Module?

    public static var shared: Module {
        guard let module = _shared else {
            fatalError("Module not initialized")
        }
        return module
    }

    private(set) var di: DI
    public private(set) var moduleInterface: ModuleInterface

    private init(di: DI) {
        self.di = di
        self.di.register(registrations: [
            CoreRegistration.self,
            ModuleRegistration.self
        ])
        
        self.moduleInterface = di.container.resolve(ModuleInterface.self)!
    }

    public static func initialize(with parentDI: DI) {
        let childDi = DI.child(of: parentDI)
        _shared = Module(di: childDi)
    }
}
