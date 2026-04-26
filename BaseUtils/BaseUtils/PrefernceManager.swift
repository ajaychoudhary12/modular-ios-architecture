//
//  PrefernceManager.swift
//  BaseUtils
//
//  Created by Ajay Choudhary on 26/04/26.
//

import Foundation

public protocol PreferenceManager {
    func save(key: String, value: String)
    func get(key: String) -> String?
}

public final class PreferenceManagerImpl: PreferenceManager {
    public init() {}
    
    public func save(key: String, value: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public func get(key: String) -> String? {
        UserDefaults.standard.string(forKey: key)
    }
}
