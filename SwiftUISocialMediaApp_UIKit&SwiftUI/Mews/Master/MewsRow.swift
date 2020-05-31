//
//  MewsRow.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI
import Combine

struct MewsRow: View {
    
    var post: MewsPost
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(post.title)
                .font(.headline)
                .fontWeight(.bold)
                .padding(.top)
            
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
                .frame( height: 220 )
            .clipped()
            
            MewsAuthorView(post: post)
                .padding(.bottom)
            
        }
    }
}

struct MewsRow_Previews: PreviewProvider {
    
    static var bindingPost = MewsPost.demoPosts.randomElement()!
    
    static var previews: some View {
        MewsRow(post: bindingPost)
    }
}
