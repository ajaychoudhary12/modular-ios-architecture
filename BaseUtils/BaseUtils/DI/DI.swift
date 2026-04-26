//
//  DI.swift
//  BaseUtils
//
//  Created by Ajay Choudhary on 26/04/26.
//

import Swinject

public final class DI {
    public let container: Container

    private init(container: Container = Container()) {
        self.container = container
    }

    // Root container (App level)
    public static func root() -> DI {
        DI()
    }

    // Child container (Feature level)
    public static func child(of parent: DI) -> DI {
        DI(container: Container(parent: parent.container))
    }
}
