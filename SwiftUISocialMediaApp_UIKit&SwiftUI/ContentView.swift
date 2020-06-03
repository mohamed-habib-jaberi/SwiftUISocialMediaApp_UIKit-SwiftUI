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
            
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                            .renderingMode(.original)
                        Text(verbatim: "Settings")
                    }
            }.tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
