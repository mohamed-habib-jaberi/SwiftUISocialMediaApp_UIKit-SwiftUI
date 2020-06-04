//
//  PetBioRow.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 04/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct PetBioRow: View {
    
    @State var hobbyText: String
    
    var body: some View {
        VStack{
            Text(verbatim: "Favorite Hobby:")
                .font(Font.system(.body, design: .rounded))
            
            TextField("Favorite Hoppy Text", text: $hobbyText)
                .lineLimit(nil)
                .padding()
        }
    .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct PetBioRow_Previews: PreviewProvider {
    static var previews: some View {
        PetBioRow(hobbyText: "Bio Text")
    }
}
