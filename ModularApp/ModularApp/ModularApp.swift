//
//  ModularApp.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 26/04/26.
//

import SwiftUI
import FeatureHome

@main
struct ModularApp: App {
    init() {
        AppDIProvider.initialize()
        setupModules()
    }
    
    private func setupModules() {
        FeatureHome.Module.initialize(with: AppDIProvider.shared.di)
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
