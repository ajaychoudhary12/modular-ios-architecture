//
//  FeatureHome.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils
import Swinject

public final class Module {

    public static var name = "Home"

    private static var _shared: Module?

    public static var shared: Module {
        guard let module = _shared else {
            fatalError("Module not initialized")
        }
        return module
    }

    private(set) var di: DI
    private(set) var moduleInterface: ModuleInterface

    private init(di: DI) {
        self.di = di

        let container = di.container
        HomeRegistration.register(in: container)

        container.register(ModuleInterface.self) { [di] _ in
            HomeModuleInterfaceImpl(di: di)
        }

        self.moduleInterface = container.resolve(ModuleInterface.self)!
    }

    public static func initialize(with parentDI: DI) {
        let childDi = DI.child(of: parentDI)
        _shared = Module(di: childDi)
    }
}
