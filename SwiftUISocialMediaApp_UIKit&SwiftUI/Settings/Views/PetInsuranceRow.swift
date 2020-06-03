//
//  PetInsuranceRow.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 01/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct PetInsuranceRow: View {
    
      private let coverageLevels = ["'They'll Live'", "'They Can Stay'", "'9 Lives'"]
    
      @Binding var settings: SettingsModel
      @Binding var insuranceOrder: InsuranceOrder
    
    var body: some View {
    
        VStack {
             VStack {
               Text(verbatim: "Coverage Level: \(comment(for: insuranceOrder.coverageLevel))")
                .font(Font.system(size: 22, design: .rounded))
                .foregroundColor(Color.myGreen)
                .padding()
                
               Slider(value: $insuranceOrder.coverageLevel, in: (0...100))
                                         .padding()
                .accessibility(value: Text("\(comment(for: insuranceOrder.coverageLevel)) coverage"))
             }
             
             Button(action: {
                withAnimation {
                    self.insuranceOrder.hasUpgraded.toggle()
                }
             }) {
               Text(verbatim: "Place Order")
                 .font(Font.system(size: 22, design: .rounded))
                 .foregroundColor(.white)
                 .padding()
                 .background(Color.myGreen)
                 .padding()
                 .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
             }
           }
        
    }
}

extension PetInsuranceRow {
  /// Method to get the comment from the array with a Slider value
  private func comment(for rating: Double) -> String {
    let rounded = Int(round((rating / 10))) / (coverageLevels.count + 1)
    return coverageLevels[rounded]
  }
}
