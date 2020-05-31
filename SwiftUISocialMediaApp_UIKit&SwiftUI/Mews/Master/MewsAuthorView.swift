//
//  MewsAuthorView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct MewsAuthorView: View {
    
    var post: MewsPost
    
    var body: some View {
        HStack{
            Image(post.author.imageName)
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            
            VStack{
                Text(post.author.type.rawValue)
                    .font(.callout)
                
                Text("\(post.postDate.formatted)")
                    .foregroundColor(.myGreen)
                    .font(.footnote)
            }
            
            Spacer()
        }
    }
}

struct MewsAuthorView_Previews: PreviewProvider {
    
    @State private static var post = MewsPost.demoPosts.randomElement()!
    
    static var previews: some View {
        MewsAuthorView(post: post)
    }
}
