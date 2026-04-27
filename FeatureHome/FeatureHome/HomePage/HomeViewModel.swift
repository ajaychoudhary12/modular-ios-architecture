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

    init(service: HomeService) {
        self.service = service
    }

    func fetchHome() {
        isLoading = true

        let data = service.fetchHome()
        let decoded = try? JSONDecoder().decode([HomeItem].self, from: data)

        self.items = decoded ?? []
        self.isLoading = false
    }
}
