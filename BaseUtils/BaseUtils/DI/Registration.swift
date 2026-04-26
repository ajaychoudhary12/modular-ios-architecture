//
//  Registration.swift
//  BaseUtils
//
//  Created by Ajay Choudhary on 26/04/26.
//

import Swinject

public protocol Registration {
    static func register(in container: Container)
}
