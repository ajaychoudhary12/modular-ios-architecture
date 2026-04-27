//
//  APIService.swift
//  Core
//
//  Created by Ajay Choudhary on 26/04/26.
//

import BaseUtils

public protocol APIClient {
    func request(endpoint: String)
}

public final class APIClientImpl: APIClient {
    var logger: CustomLogger
    
    public init(logger: CustomLogger) {
        self.logger = logger
    }
    
    public func request(endpoint: String) {
        logger.log("Requesting \(endpoint)")
    }
}
