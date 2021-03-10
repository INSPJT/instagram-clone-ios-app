//
//  MyPage.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/10.
//

import Foundation
import SwiftUI
import Combine


let myInfo : Person = Person(name: "geon._.uk", image: "sm-drawing")


let posts : String = "2"
let follower : String = "126"
let following : String = "223"
let userName : String = "Hello World"
let introduce : String = "Wellcome Hello World"

var isPrivate : Bool = true

struct MyPageContentView : View {
    var body: some View{
        GeometryReader { geometry in
            VStack{
                HStack{
                    if isPrivate {
                        Image(systemName: "lock")
                            .padding(.leading, 10)
                    }
                    Text(myInfo.name)
                        .font(.system(size: 24))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 10.0, height: 5.0)
                    
                    Spacer()
                    Image(systemName: "plus.app")
                        .resizable()
                        .frame(width: 25.0, height: 25.0)
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 25.0, height: 25.0)
                        .padding(.horizontal,10)
                }
                HStack{
                    PersonThumb(person: myInfo, width: 90, lineWidth: 3)
                        .padding(.leading, 10)
                    
                    Spacer()
                    VStack{
                        Text(posts)
                        Text("게시물")
                    }
                    .padding(.horizontal, 20)
                    
                    VStack{
                        Text(follower)
                        Text("팔로워")
                    }
                    .padding(.horizontal, 20)
                    
                    VStack{
                        Text(following)
                        Text("팔로잉")
                    }
                    .padding(.horizontal, 20)
                }
                HStack{
                    VStack(alignment: .leading){
                        Text(userName)
                            .bold()
                        Text(introduce)
                    }
                    .padding(.leading, 10)
                    .padding(.top, 10)
                    Spacer()
                }
                .padding(.bottom, 10)
                
                HStack{
                    
                    Button(LocalizedStringKey("프로필 편집"), action:{
                        
                    })
                    .font(.system(size:15))
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width/2 - 12.5, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5)
                    .padding(.leading, 10)
                    
                    Button(LocalizedStringKey("저장됨"), action:{
                        
                    })
                    .font(.system(size:15))
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width/2 - 12.5, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5)
                    .padding(.trailing, 10)
                }
                HStack {
                    VStack(alignment: .leading){
                        Text("스토리 하이라이트")
                            .bold()
                            .padding(.top, 10)
                    }
                    .padding(.leading, 10)
                    Spacer()
                }
                HStack {
                    //StoryView(people: people)
                }
                HStack{
                    
                }
                Spacer()
            }
        }
    }
}


struct MyPageContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageContentView()
    }
}
