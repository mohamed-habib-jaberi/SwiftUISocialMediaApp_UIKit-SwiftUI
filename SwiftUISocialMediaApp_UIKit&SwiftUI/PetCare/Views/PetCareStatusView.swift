//
//  PetCareStatusView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 04/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct PetCareStatusView: View {
    
    var petStatusModels: [PetStatusModel]
    
    var body: some View {
        
         GeometryReader { proxy in
            HStack(alignment: .bottom) {
                ForEach(self.petStatusModels) { model in
                    MoodRectangleView(mood: model.mood, height: proxy.size.height)
                    
                }
               
            }
        .padding()
        }
    }
}

struct PetCareStatusView_Previews: PreviewProvider {
    static var previews: some View {
        PetCareStatusView(petStatusModels: [])
    }
}
