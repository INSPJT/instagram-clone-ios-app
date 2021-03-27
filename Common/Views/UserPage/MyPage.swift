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
    
    @State var index = 0
    
    var body: some View{
        ScrollView{
            VStack{
                InfoHeader()
                
                UserInfo()
                myPostsView(index: self.$index)
                
                Spacer()
            }
        }
    }
}

struct InfoHeader : View {
    var body: some View{
        VStack{
            HStack{
                if isPrivate {
                    Image(systemName: "lock")
                        .padding(.leading, 10)
                }
                Text(myInfo.name)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                
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
        }
    }
}

struct UserInfo : View {
    var body: some View{
        let width = (UIScreen.main.bounds.width/2)
        VStack{
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
                .frame(width: width - 16, height: 30, alignment: .center)
                .cornerRadius(10)
                .border(Color.black, width: 0.5)
                .padding(.leading, 10)
                
                Button(LocalizedStringKey("저장됨"), action:{
                    
                })
                .font(.system(size:15))
                .foregroundColor(.black)
                .frame(width: width - 17, height: 30, alignment: .center)
                .cornerRadius(10)
                .border(Color.black, width: 0.5)
                .padding(.trailing, 10.0)
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
        }
    }
}

struct myPostsView : View {
    @Binding var index : Int
    var body: some View{
        VStack{
            HStack{
                Button(action: {
                    self.index = 0
                }) {
                    VStack{
                        Image(systemName: "squareshape.split.3x3")
                            .foregroundColor(self.index == 0 ? .black : .gray)
                        Capsule().fill(self.index == 0 ? Color.black : Color.clear)
                            .frame(height: 1)
                    }
                }
                Button(action: {
                    self.index = 1
                }) {
                    VStack{
                        Image(systemName: "person.crop.square.fill")
                            .foregroundColor(self.index == 1 ? .black : .gray)
                        Capsule().fill(self.index == 1 ? Color.black : Color.clear)
                            .frame(height: 1)
                    }
                 }
            }
        }
    }
}

struct PostsDatas : View {
    @Binding var data : [Post] = nil
    
    var body: some View {
        VStack(spacing: 3){
            ForEach(0..<data.postsURL.count/3){i in
                HStack(spacing: 3){
                    ForEach(0..<3){j in
                        let idx : Int = i + j + (i * 2)

                        if  idx < data.postsURL.count{
                            MyPostsContentView(imageURL: data.postsURL[idx].imageURL)
                        }
                    }
                }
            }
        }
    }
}


//struct MyPageContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyPageContentView()
//    }
//}
//
//
