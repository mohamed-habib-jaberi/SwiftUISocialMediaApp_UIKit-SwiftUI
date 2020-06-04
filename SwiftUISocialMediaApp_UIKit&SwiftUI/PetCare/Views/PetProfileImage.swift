//
//  PetProfileImage.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 04/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct PetProfileImage: View {
    
     var humanPet: HumanPet
    
    var body: some View {
        humanPet.image
             .resizable()
             .aspectRatio(contentMode: .fit)
             .cornerRadius(25)
             .mask(Image("CatMaskImage")
             .resizable()
             .scaledToFit())
             .shadow(radius: 10)
    }
}

struct PetProfileImage_Previews: PreviewProvider {
    static var previews: some View {
            PetProfileImage(
          humanPet: HumanPet(
            image: Image("News1"),
            name: "Name",
            favoriteHobby: "Hobby",
            moods: [])
        )

    }
}
