//
//  TemperatureRow.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 01/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct TemperatureRow: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

extension TemperatureRow {
    /// A convenience method to format the degrees Text from a Double
    func formatted(temperature: Double) -> String {
      return String(format: "%g", round(temperature))
    }
}
struct TemperatureRow_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureRow()
    }
}
