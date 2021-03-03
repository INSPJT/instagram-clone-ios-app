//
//  ImageInstaStyle.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

extension Image{
    func instaStylePrimary()->some View{
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .modifier(ColorBlended(color: Color("PrimaryColor")))
    }
    
    func instaStyleSecondary()->some View{
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .modifier(ColorBlended(color: Color("SecondaryColor")))
    }
    
    func instaStyleTeritary()->some View{
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .modifier(ColorBlended(color: Color("TertiaryColor")))
    }
}

