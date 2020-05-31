//
//  User.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation
enum UserType: String, CaseIterable {
    case catHerine = "Cathering"
    case Kitae = "Kitae"
    case garfield = "Garfield"
    case winston = "Winston"
    
    var model: User{
        switch self {
        case .catHerine:
            return  User(type: self, imageName: "News1")
        case .Kitae:
            return User(type: self, imageName: "News2")
        case .garfield:
            return User(type: self, imageName: "News3")
        case .winston:
            return User(type: self, imageName: "News4")
        }
    }
}

struct User {
    var type: UserType
    var imageName: String
}
