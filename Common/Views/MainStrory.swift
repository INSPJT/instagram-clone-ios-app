//
//  MainStrory.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/04/01.
//

import SwiftUI

struct MainStrory: View {
    @ObservedObject var token: TokenStorage
    var body: some View {
        Button(action:logout){
            Text("BUTTON")
        }
    }
    func logout(){
        token.tk = ""
        let url = "https://yurivon.ml/auth/singin"
        let tk = TokenUtils()
        tk.delete(url, account: "accessToken")
    }
}
