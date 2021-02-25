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
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 0){
                    StoryView(storyData: StoryData)
                    Divider()
                    ForEach(PostData){ item in
                        PostView(postData: item)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
