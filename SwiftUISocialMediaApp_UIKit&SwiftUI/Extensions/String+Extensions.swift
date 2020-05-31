//
//  String+Extensions.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation

extension String {
  /// Display costs using USD
  static func currency(from cost: Double) -> String {
    return "$\(Double(round(1000*cost)/1000))"
  }
  
}
