//
//  PetPreferences.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 01/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI
import Combine

class PetPreferences: ObservableObject {
  var humanPets: [HumanPet] = HumanPet.demoData
  var selectedPet: HumanPet { return humanPets[selectedPetIndex] }
  
  @Published var selectedPetIndex = 0
}
