//
//  ModuleInterface.swift
//  FeatureProfile
//
//  Created by Ajay Choudhary on 27/04/26.
//

import BaseUtils
import Swinject
import SwiftUI
import Core

public protocol ModuleInterface: AnyObject {
    func makeProfileView(input: ProfileRouteInput) -> AnyView
}

class ProfileModuleInterfaceImpl: ModuleInterface {
    func makeProfileView(input: ProfileRouteInput) -> AnyView {
        return AnyView(ProfileView(input: input))
    }
}
