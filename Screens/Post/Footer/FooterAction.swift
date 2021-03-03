//
//  FooterAction.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct FooterAction: View {
    var colWidth: CGFloat
    
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth),alignment: .leading),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth),alignment: .leading)
        ]){
            HStack{
                Image(systemName: "heart")
                    .instaStylePrimary()
                    .frame(width:15)
                    .padding(.trailing,10)
                Image(systemName: "magnifyingglass")
                    .instaStylePrimary()
                    .frame(width:15)
                    .padding(.trailing, 10)
                
                Image("share")
                    .instaStylePrimary()
                    .frame(width:15)
                    //.rotationEffect(.degrees(-28))
                    .padding(.top,0)
            }
            Spacer()
            
            Image(systemName: "bookmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:10)
                .foregroundColor(.gray)
                .padding(.trailing, 45)
                //.padding(.trailing, 1)
        }
    }
}
