//
//  Chat.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct Chat: Identifiable {
    var id = UUID()
    var author: UserType
    var content: String
    var chatDate: Date
}

extension Chat {
    static let demoChats = [
    Chat(author: UserType.allCases.randomElement()!, content: "Just love this purrrfect post!", chatDate: Date()),
    Chat(author: UserType.allCases.randomElement()!, content: "Seriously? What is with humans these days anyway? So hyperactive!", chatDate: Date()),
    Chat(author: UserType.allCases.randomElement()!, content: "Literally spent the entire day on the couch... time for another cat nap...", chatDate: Date()),
    Chat(author: UserType.allCases.randomElement()!, content: "Did I hear that a mouse wrote this?", chatDate: Date()),
    Chat(author: UserType.allCases.randomElement()!, content: "Hillarious!", chatDate: Date()),
    Chat(author: UserType.allCases.randomElement()!, content: "Why won't felines just tell humans this?", chatDate: Date())
    ]
}
