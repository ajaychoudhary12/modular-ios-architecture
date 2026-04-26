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
    
    private init() {
        let appDI = DI.root()
        let container = appDI.container

        // BaseUtils registrations
        container.register(CustomLogger.self) { _ in
            LoggerImpl()
        }

        container.register(PreferenceManager.self) { _ in
            PreferenceManagerImpl()
        }

        // Initialize feature modules
        FeatureHome.Module.initialize(with: appDI)

        self.di = appDI
    }
    
    static func initialize() {
        _shared = AppDIProvider()
    }
}
