//
//  MewsPost.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI
import Combine

enum Reaction: String, CaseIterable {
    case love = "😻"
    case funny = "😹"
    case unsure = "😿"
    case shock = "🙀"
}
class MewsPost: Identifiable, ObservableObject {
    var id = UUID()
    
    var imageName: String
    var title: String
    var content: String
    var postDate: Date
    var isLoved: Bool
    var author: User
    var chats: [Chat]
    
   @Published var isLiked = false
    
   @Published var reaction: Reaction
    
    init(
   imageName: String,
   title: String,
   content: String,
   postDate: Date,
   author: User,
   isLoved: Bool,
   reaction: Reaction,
   chats: [Chat] = []
    ) {
        self.imageName = imageName
        self.title = title
        self.content = content
        self.postDate = postDate
        self.author = author
        self.isLoved = isLoved
        self.reaction = reaction
        self.author = author
        self.chats = chats
    }
}

extension MewsPost {
  static let demoPosts = [
    MewsPost(
      imageName: "News1",
      title: "Cat gets stuck up tree!",
      content: """
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. \
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \
        when an unknown printer took a galley of type and scrambled it to make a type \
        specimen book. It has survived not only five centuries, but also the leap into \
        electronic typesetting, remaining essentially unchanged. It was popularised in \
        the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, \
        and more recently with desktop publishing software like Aldus PageMaker \
        including versions of Lorem Ipsum.
      """,
      postDate: Date(),
      author: UserType.allCases.randomElement()!.model,
      isLoved: true,
      reaction: Reaction.allCases.randomElement()!,
      chats: Chat.demoChats),
    MewsPost(
      imageName: "News2",
      title: "Another mouse bites the dust",
      content: """
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. \
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \
        when an unknown printer took a galley of type and scrambled it to make a type \
        specimen book. It has survived not only five centuries, but also the leap into \
        electronic typesetting, remaining essentially unchanged. It was popularised in \
        the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, \
        and more recently with desktop publishing software like Aldus PageMaker \
        including versions of Lorem Ipsum.
      """,
      postDate: Date(),
      author: UserType.allCases.randomElement()!.model,
      isLoved: false,
      reaction: Reaction.allCases.randomElement()!,
      chats: Chat.demoChats),
    MewsPost(
      imageName: "News3",
      title: "Is your Pet Human the real owner?",
      content: """
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. \
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \
        when an unknown printer took a galley of type and scrambled it to make a type \
        specimen book. It has survived not only five centuries, but also the leap into \
        electronic typesetting, remaining essentially unchanged. It was popularised in \
        the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, \
        and more recently with desktop publishing software like Aldus PageMaker \
        including versions of Lorem Ipsum.
      """,
      postDate: Date(),
      author: UserType.allCases.randomElement()!.model,
      isLoved: true,
      reaction: Reaction.allCases.randomElement()!),
    MewsPost(
      imageName: "News4",
      title: "Cats: Aren't we the best?",
      content: """
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. \
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \
        when an unknown printer took a galley of type and scrambled it to make a type \
        specimen book. It has survived not only five centuries, but also the leap into \
        electronic typesetting, remaining essentially unchanged. It was popularised in \
        the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, \
        and more recently with desktop publishing software like Aldus PageMaker \
        including versions of Lorem Ipsum.
      """,
      postDate: Date(),
      author: UserType.allCases.randomElement()!.model,
      isLoved: false,
      reaction: Reaction.allCases.randomElement()!,
      chats: [])
  ]
}

extension MewsPost: Equatable, Hashable {
  static func == (lhs: MewsPost, rhs: MewsPost) -> Bool {
    return lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}
