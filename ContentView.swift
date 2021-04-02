//
//  ContentView.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//
//

import SwiftUI
import Foundation
import Combine

struct ContentView: View {
    //@State
    @ObservedObject var token: TokenStorage
    @State private var url = "https://yurivon.ml/auth/singin"
    @State private var NowToken: String?
    func refresh(){
        let tk = TokenUtils()
        if let str = tk.read(url, account: "accessToken"){
            if str != nil{
                token.tk = str
            }
        }
    }
    var body: some View {
        Group{
            if token.tk == ""{
                LoginContentView(token: token)
            }else{
                MainStrory(token: token)
            }
        }.onAppear(perform: refresh)
    }
    
    
}
//
//extension ContentView {
//    var other: some View{
//        GeometryReader{geometry in
//            let colWidth = geometry.size.width / 3
//            
//            TabView{
//                NavigationView{
//                    VStack{
//                        //nav!!
//                        NavView(colWidth: colWidth)
//                        ScrollView{
//                            VStack{
//                                NewsView()
//                                    .padding(.leading, 10)
//                                    .padding(.trailing, 10)
//                                    .padding(.bottom, 15)
//                                StoryView(people: people)
//                                    .padding(.bottom, 15)
//                                    .padding(.leading, 15)
//                                FollowingBodyView(people: people, colWidth: colWidth)
//                                    .padding(.leading, 10)
//                                    .padding(.trailing, 10)
//                                    .padding(.bottom, 15)
//                            }
//                        }
//                    }
//                    .navigationBarHidden(true)
//                }
//                .tabItem {
//                    Image(systemName: "house.fill")
//                }
//                NavigationView{
//                    VStack{
//                        
//                    }
//                    
//                }
//                .tabItem {
//                    Image(systemName:   "magnifyingglass")
//                }
//                NavigationView{
//                    VStack{
//                        
//                    }
//                    
//                }
//                .tabItem {
//                    Image(systemName: "camera")
//                    
//                }
//                NavigationView{
//                    VStack{
//                        
//                    }
//                    
//                }
//                .tabItem {
//                    Image(systemName: "heart")
//                }
//                NavigationView{
//                    VStack{
//                        MyPageContentView()
//                    }
//                    
//                }
//                .tabItem {
//                    Image(systemName: "person")
//                }
//            }
//        }
//    }
//}
////
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        //if 문달아서 로그인했는지 안했는지 파악
////        ContentView()
////    }
////}
