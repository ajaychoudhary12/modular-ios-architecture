//
//  ModuleInterface.swift
//  FeatureProfile
//
//  Created by Ajay Choudhary on 27/04/26.
//

import BaseUtils
import Swinject
import SwiftUI

public protocol ModuleInterface: AnyObject {
    func makeProfileView() -> AnyView
}

class ProfileModuleInterfaceImpl: ModuleInterface {
    func makeProfileView() -> AnyView {
        return AnyView(ProfileView())
    }
}
