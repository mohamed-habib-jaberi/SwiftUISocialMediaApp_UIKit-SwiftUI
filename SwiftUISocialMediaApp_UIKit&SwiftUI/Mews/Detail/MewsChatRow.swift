//
//  MewsChatRow.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct MewsChatRow: View {
    
    var chat: Chat
    
    var body: some View {
        HStack(alignment: .top) {
            Image(chat.author.model.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .shadow(radius: 2)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(chat.content)
                    .font(.footnote)
                    .foregroundColor(Color.white)
                    .lineLimit(nil)
                
                Text(chat.chatDate.formatted)
                    .font(Font.system(size: 10, design: .monospaced))
                    .foregroundColor(Color.white)
            }
            .padding()
            .background(Color.myGreen)
            .cornerRadius(25)
            
            Spacer()
        }
    }
}

struct MewsChatRow_Previews: PreviewProvider {
    static var previews: some View {
        MewsChatRow(chat: Chat(
            author: UserType.allCases.randomElement()!.model.type,
            content: "Comment",
            chatDate: Date()))
    }
}
