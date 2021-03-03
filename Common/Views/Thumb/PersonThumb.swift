//
//  PersonThumb.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct PersonThumb: View {
    var person: Person
    var width: CGFloat
    var lineWidth: CGFloat
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: width + 7, height: width + 7)
                .background(Color("PrimaryColor"))
                .clipShape(Circle())
            
            Image(person.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("PrimaryColorInvert"),lineWidth: lineWidth))//Ring 만들기!
            
        }
    }
}
