//
//  TextInstaStyle.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI


extension Text {
    func instaStylePrimary() -> some View{
        self
            .font(.system(size: 13))
            .foregroundColor(Color("PrimaryFontColor"))
            .bold()
    }
    
    func instaStyleSecondary() -> some View{
        self
            .font(.system(size: 13))
            .foregroundColor(Color("PrimaryFontColor"))
    }
    
    func instaStyleTertiary() -> some View{
        self
            .font(.system(size: 13))
            .foregroundColor(Color("TertiaryFontColor"))
            .bold()
    }
}
