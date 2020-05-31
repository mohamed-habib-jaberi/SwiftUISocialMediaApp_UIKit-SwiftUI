//
//  MewsListView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct MewsListView: View {
    
    @State private var posts: [MewsPost] = MewsPost.demoPosts
    
    var body: some View {
        NavigationView{
            List{
               
                ForEach(posts) { post in
                    MewsRow(post: post)
                }
            }
        .navigationBarTitle(Text(verbatim: "Cat Mews"))
        }
    }
}

struct MewsListView_Previews: PreviewProvider {
    static var previews: some View {
        MewsListView()
    }
}
