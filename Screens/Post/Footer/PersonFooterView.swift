//
//  PostLikeView.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct PersonFooterView: View {
    var person: Person
    var colWidth: CGFloat
    @Binding var clickedOut: Bool
    
    var body: some View {
        VStack(alignment: .leading){
            FooterAction(colWidth: colWidth)
            
            Text("23 Likes")
                .instaStylePrimary()
            
            HStack{
                HStack{
                    Text("superduperguy")
                        .instaStylePrimary()
                    Text("Do you Enjoy Programming")
                        .instaStylePrimary()
                }
                Spacer()
                Image(systemName: "heart")
                    .instaStyleSecondary()
                    .frame(width: 10)
                    .padding(.trailing, 25)
            }
            Text("View all 3 comments")
                .instaStyleTertiary()
                .padding(.bottom, 3)
            MiniAddCommentView(person: person,clickedOut: $clickedOut)
            
            Text("23 minutes ago")
                .instaStylePrimary()
                .padding(.bottom, 5)
        }
    }
}
