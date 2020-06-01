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
}

// HumanPet demo data
extension HumanPet {
  static let demoData = [
    HumanPet(
      image: Image("Ray", label: Text("Profile Image")),
      name: "Ray",
      favoriteHobby: "Likes mountain climbing"
    ),
    HumanPet(
      image: Image("Catie"),
      name: "Catie",
      favoriteHobby: "Loves iOS"
    ),
    HumanPet(
      image: Image("Laurie"),
      name: "Laurie",
      favoriteHobby: "Likes learning"
    ),
    HumanPet(
      image: Image("Jessy"),
      name: "Jessy",
      favoriteHobby: "Likes creating content"
    ),
    HumanPet(
      image: Image("Antonio"),
      name: "Antonio",
      favoriteHobby: "Likes coding"
    ),
    HumanPet(
      image: Image("Profile"),
      name: "Marin",
      favoriteHobby: "Likes writing"
    ),
    HumanPet(
      image: Image("Profile"),
      name: "Katie",
      favoriteHobby: "Likes reviewing"
    )
  ]
}

