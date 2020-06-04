//
//  PetCareRow.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 04/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct PetCareRow: View {
    
    @State private var showMoods = false
    var petModel: HumanPet
    
    var body: some View {
         VStack(alignment: .center, spacing: 10) {
             
             if petModel.moods.count > 0 {
               
               Text(verbatim: "Pet's Mood This Week")
                 .font(Font.system(.title, design: .rounded))
               
               Button(action: {
                 withAnimation {
                   self.showMoods.toggle()
                 }
               }) {
                 Image(systemName: showMoods ? "plus.app.fill" : "plus.app")
                   .imageScale(.large)
                   .rotationEffect(.degrees(showMoods ? 90 : 0))
                   .scaleEffect(showMoods ? 1.5 : 1)
                   .padding()
               }
             }
           }
    }
}

struct PetCareRow_Previews: PreviewProvider {
    static var previews: some View {
        PetCareRow(petModel: HumanPet(
        image: Image("Cat Food 1"),
        name: "Laurie",
        favoriteHobby: "Learning SwiftUI",
        moods: []))
    }
}
