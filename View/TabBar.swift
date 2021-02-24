//
//  TabBar.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/02/24.
//

import SwiftUI

struct TabBar: View {
    @State private var Selection = 0
    
    init(){
        UITabBar.appearance().barTintColor = .white
    }
    
    var body: some View {
        TabView(selection: $Selection){
            HomeView()
                .tabItem {
                    //selection == 0 ? Image("home") : Image("home")
                    Selection == 0 ? Image(systemName: "star.circle.fill") :
                    Image(systemName: "star.circle")
                }
                .tag(0)
            ProfileView()
                .tabItem {
                    Selection == 1 ? Image(systemName: "folder.circle") :
                        Image(systemName: "folder.circle")
                }
                .tag(1)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
