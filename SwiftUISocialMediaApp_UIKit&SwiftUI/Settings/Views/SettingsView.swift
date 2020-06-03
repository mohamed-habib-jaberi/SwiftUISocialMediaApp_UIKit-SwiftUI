//
//  SettingsView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 01/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    private let coverageLevels = ["'They'll Live'", "'They Can Stay'", "'9 Lives'"]
    
    @State private var insuranceOrder = InsuranceOrder()
    @State private var settings = SettingsModel()
    
    var body: some View {
        
        NavigationView{
            Form{
                Section {
                    TemperatureRow(settings: $settings)
                }
                
                Section{
                    if !insuranceOrder.hasUpgraded {
                        Toggle(isOn: $settings.isInsuranceRequired) {
                            Text(verbatim: "Is insurance required?")
                        }
                        if settings.isInsuranceRequired {
                            
                            DatePicker(selection: $insuranceOrder.fromDate) {
                                Text(verbatim: "Cover Start Date")
                            }
                            
                            DatePicker(selection: $insuranceOrder.toDate) {
                                Text(verbatim: "Cover End Date")
                            }
                        }
                    }else{
                        Text(verbatim: "Order Received: You are now covered!")
                    }
                }
                
                Section {
                    PetReplacementRow()
                        .accessibility(label: Text(verbatim: "Pet Replacement Selection"))
                }
            }
            .navigationBarTitle(Text(verbatim: "Settings"), displayMode: .inline)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
