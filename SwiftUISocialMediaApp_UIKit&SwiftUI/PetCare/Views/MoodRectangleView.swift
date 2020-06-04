//
//  MoodRectangleView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 04/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct MoodRectangleView: View {
    
    var mood: Mood
    
    var body: some View {
        Text("Rectangle")
    }
}

struct MoodRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        MoodRectangleView(mood: .happy)
    }
}
