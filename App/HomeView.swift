//
//  HomeView.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/02/24.
//

import SwiftUI

struct HomeView: View {
    
    init(){
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().shadowImage =
            UIImage()
    }
    @State private var gridLayout: [GridItem] =
        [GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators:false) {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 0){
                    StoryView(storyData: StoryData)
                    Divider()
                    ForEach(PostData) { item in
                        PostView(postData: item)
                    }
                }//: GRID
            }//: SCROLL
            .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image("logo")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(height:65)
                    }//: TOOLBAR ITEM LEFT
        
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack(alignment:.center, spacing:25){
                            Button(action:{
                                print("Go to Search")
                            }){
                                Image("search")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 25, height: 25, alignment: .center)
                            }
                            
                            Button(action:{
                                print("Go to messages")
                            }){
                                ZStack{
                                    Image("message")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 25, height: 25, alignment: .center)
                                    
                                    Text("3")
                                        .font(Font.system(size: 13, weight: .bold))
                                        .frame(width:18, height:18)
                                        .background(Color.red)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                        .offset(
                                            x: 9,
                                            y: -9
                                        )
                                }//: ZSTACK
                            }
                        }//: HSTACK
                    }//: TOOLBAR ITEM RIGHT
                }//: TOOLBAR
        }//: NAVIGATION VIEW
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
