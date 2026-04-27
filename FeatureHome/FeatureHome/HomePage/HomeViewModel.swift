//
//  HomeViewModel.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 27/04/26.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {

    @Published var items: [HomeItem] = []
    @Published var isLoading = false

    private let service: HomeService
    private let navigator: HomeNavigator

    init(service: HomeService, navigator: HomeNavigator) {
        self.service = service
        self.navigator = navigator
    }
    
    func openProfie() {
        navigator.goToProfile()
    }

    func fetchHome() {
        isLoading = true

        let data = service.fetchHome()
        let decoded = try? JSONDecoder().decode([HomeItem].self, from: data)

        self.items = decoded ?? []
        self.isLoading = false
    }
}
