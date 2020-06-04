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
    
    var color: Color {
        switch mood {
        case .happy:
            return .green
        case .normal:
            return .yellow
        case .uncatty:
            return .red
        
        }
    }
   
    var height: CGFloat
    
     var calculatedHeight: CGFloat {
      (height / CGFloat(Mood.allCases.count)) * CGFloat(mood.rawValue)
    }
    
    
    var body: some View {
        
        Rectangle()
             .fill(color)
             .frame(height: calculatedHeight, alignment: .bottom)
    }
}

struct MoodRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        MoodRectangleView(mood: .happy, height: 200)
    }
}
