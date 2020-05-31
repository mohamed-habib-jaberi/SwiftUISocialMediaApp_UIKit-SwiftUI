//
//  MewsChatView.swift
//  SwiftUISocialMediaApp_UIKit&SwiftUI
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct MewsChatView: View {
    
   var chats: [Chat]
    
    var body: some View {
        List{
            ForEach(chats) { chat  in
        MewsChatRow(chat: chat)
            }
        }
    }
}

struct MewsChatView_Previews: PreviewProvider {
    static var previews: some View {
        MewsChatView(chats: [Chat(author: UserType.allCases.randomElement()!.model.type, content: "Content", chatDate: Date())])
    }
}
