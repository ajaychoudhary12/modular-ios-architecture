//
//  AppRouter.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 27/04/26.
//

import SwiftUI
import Combine

final class AppRouter: ObservableObject {
    @Published var path = NavigationPath()

    func navigate(_ route: AppRoute) {
        path.append(route)
    }

    func reset() {
        path = NavigationPath()
    }
}
