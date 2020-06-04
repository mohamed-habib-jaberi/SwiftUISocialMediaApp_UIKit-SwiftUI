//
//  HumanPet.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 01/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct HumanPet {
  var image: Image
  var name: String
  var favoriteHobby: String
    
    var moods: [PetStatusModel]
}

// HumanPet demo data
extension HumanPet {
  static let demoData = [
    HumanPet(
      image: Image("Ray", label: Text("Profile Image")),
      name: "Ray",
      favoriteHobby: "Likes mountain climbing",
      moods: [
             PetStatusModel(mood: .happy, date: Date()),
             PetStatusModel(mood: .uncatty, date: Date(timeIntervalSinceReferenceDate: 129309)),
             PetStatusModel(mood: .normal, date: Date(timeIntervalSinceReferenceDate: 1293039)),
             PetStatusModel(mood: .uncatty, date: Date(timeIntervalSinceReferenceDate: 1293049)),
             PetStatusModel(mood: .normal, date: Date(timeIntervalSinceReferenceDate: 1239309))
         ]
    ),
    HumanPet(
      image: Image("Catie"),
      name: "Catie",
      favoriteHobby: "Loves iOS",
       moods: []
    ),
    HumanPet(
      image: Image("Laurie"),
      name: "Laurie",
      favoriteHobby: "Likes learning",
      moods: []
    ),
    HumanPet(
      image: Image("Jessy"),
      name: "Jessy",
      favoriteHobby: "Likes creating content",
      moods: [
             PetStatusModel(mood: .happy, date: Date()),
             PetStatusModel(mood: .happy, date: Date(timeIntervalSinceReferenceDate: 129309)),
             PetStatusModel(mood: .normal, date: Date(timeIntervalSinceReferenceDate: 1293039)),
             PetStatusModel(mood: .happy, date: Date(timeIntervalSinceReferenceDate: 1293049)),
             PetStatusModel(mood: .normal, date: Date(timeIntervalSinceReferenceDate: 1239309))
         ]
    ),
    HumanPet(
      image: Image("Antonio"),
      name: "Antonio",
      favoriteHobby: "Likes coding",
       moods: []
    ),
    HumanPet(
      image: Image("Profile"),
      name: "Marin",
      favoriteHobby: "Likes writing",
       moods: []
    ),
    HumanPet(
      image: Image("Profile"),
      name: "Katie",
      favoriteHobby: "Likes reviewing",
      moods: [
          PetStatusModel(mood: .uncatty, date: Date()),
          PetStatusModel(mood: .uncatty, date: Date(timeIntervalSinceReferenceDate: 129309)),
          PetStatusModel(mood: .uncatty, date: Date(timeIntervalSinceReferenceDate: 1293039)),
          PetStatusModel(mood: .normal, date: Date(timeIntervalSinceReferenceDate: 1293049)),
          PetStatusModel(mood: .uncatty, date: Date(timeIntervalSinceReferenceDate: 1239309))
      ]
    )
  ]
}

