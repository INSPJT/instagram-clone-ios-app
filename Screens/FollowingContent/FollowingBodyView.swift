//
//  FollowingBodyView.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct FollowingBodyView: View {
    var people: [Person]
    var colWidth: CGFloat
    @State var clickedOnMe: Bool = false
    
    var body: some View {
        LazyVStack(alignment: .leading){
            ForEach(people, id:\.id){person in
                PersonHeaderView(person: person)
                
                
                Image(person.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                PersonFooterView(person: person, colWidth: colWidth,clickedOut: $clickedOnMe)
                    .padding(.bottom, 10)
            }
        }
        .onTapGesture {
            if self.clickedOnMe == false{
                self.clickedOnMe = true
            }
        }
    }
}
