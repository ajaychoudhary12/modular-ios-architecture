//
//  HomeNavigator.swift
//  ModularApp
//
//  Created by Ajay Choudhary on 27/04/26.
//

import FeatureHome

final class HomeNavigatorImpl: HomeNavigator {
    private let router: AppRouter

    init(router: AppRouter) {
        self.router = router
    }

    func goToProfile() {
        router.navigate(.profile)
    }
}
