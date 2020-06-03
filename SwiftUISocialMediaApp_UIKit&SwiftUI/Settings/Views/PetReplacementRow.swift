//
//  PetReplacementRow.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 01/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct PetReplacementRow: View {
    
    
    @Binding var selectedOwnerIndex: Int
    private let pets = HumanPet.demoData
    
    var body: some View {
        Picker(selection: $selectedOwnerIndex, label: Text(verbatim: "Replace Pet")) {
            ForEach(0..<pets.count) { iteration in
                
                VStack(alignment: .leading) {
                    self.pets[iteration].image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 120)
                        .mask(
                            Image("CatMaskImage")
                                .resizable()
                    )
                    
                    Text(self.pets[iteration].name)
                        .foregroundColor(Color.myGreen)
                        .padding([.leading, .trailing], 8)
                        .padding([.top, .bottom])
                        .background(Color.primary)
                    .cornerRadius(20)
                    
                    Text(self.pets[iteration].favoriteHobby)
                        .font(.body)
                        .truncationMode(.tail)
                }.tag(iteration)
            }
        }
    }
}

struct PetReplacementRow_Previews: PreviewProvider {
    static var previews: some View {
        PetReplacementRow(selectedOwnerIndex: .constant(3))
    }
}
