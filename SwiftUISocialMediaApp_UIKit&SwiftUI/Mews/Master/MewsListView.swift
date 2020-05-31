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
    @State private var isFilteringLovedPosts: Bool = false
    
    var body: some View {
        NavigationView{
            List{
               
                Toggle(isOn: $isFilteringLovedPosts) {
                    Text(verbatim: "Show loved posts only")
                }
                
                ForEach(posts) { post in
                    if !self.isFilteringLovedPosts || post.reaction == .love {
                          MewsRow(post: post)
                    }
                  
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
