//
//  APIService.swift
//  Core
//
//  Created by Ajay Choudhary on 26/04/26.
//

import Foundation

public protocol APIClient {
    func request(endpoint: String)
}

public final class APIClientImpl: APIClient {
    public init() {}
    
    public func request(endpoint: String) {
        print("Requesting \(endpoint)")
    }
}
