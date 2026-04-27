//
//  ModuleInterface.swift
//  Core
//
//  Created by Ajay Choudhary on 27/04/26.
//

import BaseUtils
import Swinject

public protocol ModuleInterface: AnyObject {
    func getApiClient() -> APIClient
}

class CoreModuleInterfaceImpl: ModuleInterface {
    func getApiClient() -> APIClient {
        Module.shared.di.container.resolve(APIClient.self)!
    }
}
