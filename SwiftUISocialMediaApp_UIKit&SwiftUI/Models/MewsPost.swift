//
//  MewsPost.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI
import Combine

enum Reaction: String {
    case love = "😻"
    case funny = "😹"
    case unsure = "😿"
    case shock = "🙀"
}
class MewsPost: Identifiable {
    var id = UUID()
    
    var imageName: String
    var title: String
    var content: String
    var postDate: Date
    var isLove: Bool
    var author: User
    var chats: [Chat]
    
    var isLiked = false
    
    var reaction: Reaction
    
    init(
   imageName: String,
   title: String,
   content: String,
   postDate: Date,
   author: User,
   isLove: Bool,
   reaction: Reaction,
   chats: [Chat] = []
    ) {
        self.imageName = imageName
        self.title = title
        self.content = content
        self.postDate = postDate
        self.author = author
        self.isLove = isLove
        self.reaction = reaction
        self.author = author
        self.chats = chats
    }
}



extension MewsPost: Equatable, Hashable {
  static func == (lhs: MewsPost, rhs: MewsPost) -> Bool {
    return lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}
