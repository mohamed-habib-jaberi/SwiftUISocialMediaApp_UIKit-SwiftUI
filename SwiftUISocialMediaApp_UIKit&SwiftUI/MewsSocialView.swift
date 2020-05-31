//
//  MewsSocialView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct MewsSocialView: View {
    
    @ObservedObject var post: MewsPost
    
    var body: some View {
        HStack{
            Button(action: {
                withAnimation {
                    self.post.isLiked.toggle()
                }
            }) {
                Text(verbatim: "Like 👍🏻")
            }
        }
    }
}

struct MewsSocialView_Previews: PreviewProvider {
    static var previews: some View {
        MewsSocialView(post: MewsPost.demoPosts.randomElement()!)
    }
}
