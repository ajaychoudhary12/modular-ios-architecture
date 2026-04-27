//
//  HomeService.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 27/04/26.
//

import Core

protocol HomeService {
    func fetchHome()
}

class HomeServiceImpl: HomeService {
    private let apiClient: APIClient
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func fetchHome() {
        apiClient.request(endpoint: "/home")
    }
}

