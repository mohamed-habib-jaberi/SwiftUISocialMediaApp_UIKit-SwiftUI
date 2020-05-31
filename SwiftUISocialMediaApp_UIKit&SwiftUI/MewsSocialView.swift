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
    @State private var isShared = false
    
    var body: some View {
        HStack{
            Button(action: {
                withAnimation {
                    self.post.isLiked.toggle()
                }
            }) {
                Text(verbatim: "Like 👍🏻")
                    .foregroundColor(.primary)
                    .padding([.leading, .trailing], 10)
                    .padding([.top, .bottom], 5)
                    .opacity(self.post.isLiked ? 1 : 0.5)
                .saturation(self.post.isLiked ? 1 : 0.5)
            }
            
            Button(action: {
                withAnimation {
                    self.isShared = true
                }
            }) {
                Text(verbatim: "Share 🎉")
                    .foregroundColor(.primary)
                    .padding([.leading, .trailing], 10)
                    .padding([.top, .bottom], 5)
                    .background(Color.secondary)
                    .border(Color.white, width: 3)
            }
            .alert(isPresented: self.$isShared) {
                Alert(title: Text("Shared"))
            }
        }
    }
}

struct MewsSocialView_Previews: PreviewProvider {
    static var previews: some View {
        MewsSocialView(post: MewsPost.demoPosts.randomElement()!)
    }
}
