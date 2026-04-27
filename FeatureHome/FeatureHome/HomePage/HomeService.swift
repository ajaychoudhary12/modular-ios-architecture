//
//  HomeService.swift
//  FeatureHome
//
//  Created by Ajay Choudhary on 27/04/26.
//

import Core
import Foundation

protocol HomeService {
    func fetchHome() -> Data
}

class HomeServiceImpl: HomeService {
    private let apiClient: APIClient
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func fetchHome() -> Data {
        apiClient.request(endpoint: "/home")
        
        let json = """
                [
                    { "id": 1, "title": "Read Dead Redemption 2", "imageName": "game1" },
                    { "id": 2, "title": "Uncharted 4", "imageName": "game2" },
                    { "id": 3, "title": "Rocket League", "imageName": "game3" },
                    { "id": 4, "title": "Fifa", "imageName": "game4" },
                    { "id": 5, "title": "Super Mario", "imageName": "game5" },
                    { "id": 6, "title": "God of War", "imageName": "game6" },
                    { "id": 7, "title": "Wolverine", "imageName": "game7" },
                    { "id": 8, "title": "Spiderman", "imageName": "game8" },
                ]
                """
        return Data(json.utf8)
    }
}

