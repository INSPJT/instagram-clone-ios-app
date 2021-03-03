//
//  PostView.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct PersonHeaderView: View {
    let person: Person
    var body: some View {
        HStack{
            PersonThumb(person: person, width: 30, lineWidth: 3)
            VStack(alignment: .leading){
                Text(person.name)
                    .instaStylePrimary()
                
                Text("producejams - Original Audio")
                    .instaStyleSecondary()
                
            }
            Spacer()
            Image("more")
                .instaStylePrimary()
                .frame(width:15)
        }
    }
}


