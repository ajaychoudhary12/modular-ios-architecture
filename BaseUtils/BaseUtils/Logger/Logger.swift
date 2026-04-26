//
//  Logger.swift
//  BaseUtils
//
//  Created by Ajay Choudhary on 26/04/26.
//

public protocol CustomLogger {
    func log(_ message: String)
}

public final class LoggerImpl: CustomLogger {
    public init() {}
    
    public func log(_ message: String) {
        print("[LOG]: \(message)")
    }
}
