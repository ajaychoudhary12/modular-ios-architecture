//
//  ProfileRouteInput.swift
//  Core
//
//  Created by Ajay Choudhary on 28/04/26.
//

import Foundation

public struct ProfileRouteInput: Hashable {
    public let userID: String
    public let displayName: String?
    public let avatarName: String?

    public init(
        userID: String,
        displayName: String? = nil,
        avatarName: String? = nil
    ) {
        self.userID = userID
        self.displayName = displayName
        self.avatarName = avatarName
    }
}
