//
//  ModuleInterface.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils
import Swinject
import SwiftUI

public protocol ModuleInterface: AnyObject {
    func makeHomeView() -> AnyView
}

class HomeModuleInterfaceImpl: ModuleInterface {
    func makeHomeView() -> AnyView {
        let viewModel = Module.shared.di.container.resolve(HomeViewModel.self)!
        return AnyView(HomeView(viewModel: viewModel))
    }
}
