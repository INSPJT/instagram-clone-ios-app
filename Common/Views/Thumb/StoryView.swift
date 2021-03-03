//
//  StoryView.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct StoryView: View {
    var people: [Person]

    var body: some View {
        ScrollView(.horizontal){
//        VStack(alignment: .leading){
            //NewsView()
            //스토리!
            LazyHStack{
                VStack{
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65)
                        .rotation3DEffect(.degrees(0),
                                          axis:(x:0, y:1, z: 0))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .colorInvert()
                        //.modifier(<#T##modifier: T##T#>)
                    
                    Text("Your Story")
                        .font(.system(size:12))
                }
                .padding(.trailing, 20)
                ForEach(people, id:\.id){person in
                    VStack{
                        PersonThumb(person: person, width: 55, lineWidth: 3)
                        Text(person.name)
                            .instaStylePrimary()
                    }
                    .padding(.trailing, 20)
                }
                
            }
        }
    }
}
