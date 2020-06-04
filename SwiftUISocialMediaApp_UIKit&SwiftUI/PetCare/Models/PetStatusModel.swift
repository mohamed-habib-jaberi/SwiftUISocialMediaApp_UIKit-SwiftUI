//
//  PetStatusModel.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 04/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

enum Mood: Int, CaseIterable, Hashable {
  case uncatty = 1
  case normal
  case happy
}

struct PetStatusModel: Identifiable {
  var id = UUID()
  var mood: Mood
  var date: Date
}
