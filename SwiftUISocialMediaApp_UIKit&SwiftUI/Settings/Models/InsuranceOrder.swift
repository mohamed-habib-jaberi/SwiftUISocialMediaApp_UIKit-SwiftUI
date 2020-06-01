//
//  InsuranceOrder.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 01/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI
import Combine

struct InsuranceOrder {
  var coverageLevel: Double = 0
  var fromDate: Date = Date()
  var toDate: Date = Date()
  var hasUpgraded = false
}
