//
//  NavView.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct NavView: View {
    var colWidth: CGFloat
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth))
        ]){
            Spacer()
            Text("InstaClone")
                .font(.custom("OleoScript-Regular", size: 20))
            Image("share")
                .instaStylePrimary()
                .frame(width: 12)
                .rotationEffect(.degrees(-20))
        }
    }
}
