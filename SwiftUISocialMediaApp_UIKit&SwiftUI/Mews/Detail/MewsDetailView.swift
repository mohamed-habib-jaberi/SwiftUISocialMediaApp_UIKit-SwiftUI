//
//  MewsDetailView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct MewsDetailView: View {
    
    var post: MewsPost
    
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        
        GeometryReader { proxy in
            VStack(alignment: .center) {
                
                if self.verticalSizeClass == .regular {
                    
                    Image(self.post.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .frame(height: 250)
                        .padding()
                }
                
                VStack{
                    ScrollView{
                        Text(self.post.content)
                            .font(.body)
                            .lineLimit(nil)
                            .frame(minWidth: 0, idealWidth: proxy.size.width, minHeight: 200, maxHeight: 300)
                            .padding([.leading, .trailing])
                    }
                }
                
                 MewsChatView(chats: self.post.chats)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
        .navigationBarTitle(Text(post.title), displayMode: .inline)
    }
}

struct MewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MewsDetailView(post: MewsPost.demoPosts.randomElement()!)
    }
}
