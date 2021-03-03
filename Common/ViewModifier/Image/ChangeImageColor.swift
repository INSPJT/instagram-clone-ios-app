//
//  ChangeImageColor.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

public struct ColorBlended: ViewModifier {
    
    var color: Color
    
    public func body(content: Content) -> some View{
        ZStack{
            content
            color.blendMode(.sourceAtop)            
        }
        .drawingGroup(opaque: false)
    }
    
}
