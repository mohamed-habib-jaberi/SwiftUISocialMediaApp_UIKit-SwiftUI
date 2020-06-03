//
//  TemperatureRow.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 01/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct TemperatureRow: View {
    
    @Binding var settings : SettingsModel
    
    var body: some View {
        VStack{
            Toggle(isOn: $settings.isTemperatureControlActive) {
                Text(verbatim: "Active Home Heating Override")
            }
            
            if $settings.isTemperatureControlActive.wrappedValue {
                Text(verbatim: "Set Temperature")
                Text(verbatim: "Desired Temperature \(formatted(temperature: $settings.desiredTemperature.wrappedValue))°F")
                Slider(value: $settings.desiredTemperature, in: (1...120))
            }
        }
    }
}

extension TemperatureRow {
    /// A convenience method to format the degrees Text from a Double
    func formatted(temperature: Double) -> String {
      return String(format: "%g", round(temperature))
    }
}
struct TemperatureRow_Previews: PreviewProvider {
    
    static var settingsModels = SettingsModel(isInsuranceRequired: false, isTemperatureControlActive: true, desiredTemperature: 22.5)
    
    static var previews: some View {
        TemperatureRow(settings: .constant(settingsModels))
    }
}
