//
//  BaseUtilRegistration.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 27/04/26.
//

import Swinject
import BaseUtils

final class BaseUtilsRegistration: Registration {
    static func register(in container: Container) {
        container.register(CustomLogger.self) { _ in LoggerImpl() }
        container.register(PreferenceManager.self) { _ in PreferenceManagerImpl() }
    }
}
