//
//  ContentView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView{
            MewsListView()
                .tabItem {
                    VStack{
                        Image(systemName: "square.stack.fill")
                            .renderingMode(.original)
                        Text(verbatim: "Mews")
                    }
            }.tag(1)
            
            PetCareView()
              .tabItem {
                VStack {
                  Image(systemName: "person.crop.circle")
                    .renderingMode(.original)
                  Text(verbatim: "PetCare")
                }
            }.tag(2)
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                            .renderingMode(.original)
                        Text(verbatim: "Settings")
                    }
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
