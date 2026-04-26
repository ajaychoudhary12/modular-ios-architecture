//
//  ModularApp.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 26/04/26.
//

import SwiftUI

@main
struct ModularApp: App {
    init() {
        AppDIProvider.initialize()
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
