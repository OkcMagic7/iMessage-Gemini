//
//  User.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//

import Foundation

struct User {
    var id: String
    var name: String
    var profilePictureURL: String?

    init(id: String, name: String, profilePictureURL: String? = nil) {
        self.id = id
        self.name = name
        self.profilePictureURL = profilePictureURL
    }
}
