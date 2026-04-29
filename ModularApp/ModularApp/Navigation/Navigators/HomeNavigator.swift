//
//  HomeNavigator.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 27/04/26.
//

import FeatureHome
import Core

final class HomeNavigatorImpl: HomeNavigator {
    private let router: AppRouter

    init(router: AppRouter) {
        self.router = router
    }

    func goToProfile(input: ProfileRouteInput) {
        router.navigate(.profile(input))
    }
}
