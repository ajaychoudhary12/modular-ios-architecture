//
//  CoreRegistration.swift
//  Core
//
//  Created by Ajay Choudhary on 27/04/26.
//

import BaseUtils
import Swinject

final class CoreRegistration: Registration {
    static func register(in container: Container) {
        container.register(APIClient.self) { resolver in
            let logger = resolver.resolve(CustomLogger.self)!
            return APIClientImpl(logger: logger)
        }
    }
}
