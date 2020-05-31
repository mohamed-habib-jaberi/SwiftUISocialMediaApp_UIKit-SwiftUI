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
    
    @ObservedObject var post: MewsPost
    
    var body: some View {
        
        NavigationLink(destination: MewsDetailView(post: post)) {
            
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
                
                HStack {
                    MewsAuthorView(post: post)
                      
                    Picker("Reaction", selection: $post.reaction) {
                        ForEach(Reaction.allCases, id: \.self) { reaction in
                            
                            Text(reaction.rawValue).tag(reaction)
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())
                }
                .padding(.bottom)
            }
        }
    }
}

struct MewsRow_Previews: PreviewProvider {
    
    static var bindingPost = MewsPost.demoPosts.randomElement()!
    
    static var previews: some View {
        MewsRow(post: bindingPost)
    }
}
