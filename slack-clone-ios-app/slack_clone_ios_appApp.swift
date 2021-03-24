//
//  slack_clone_ios_appApp.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/02/05.
//  Checked By 황지웅 on 2021/02/21


import SwiftUI

@main
struct slack_clone_ios_appApp: App {
    @State private var isLogin = false
    
    var body: some Scene {
        WindowGroup {
            if isLogin == false {
                LoginContentView(isSignin : $isLogin)
            } else{
                ContentView()
            }
        }
    }
}
