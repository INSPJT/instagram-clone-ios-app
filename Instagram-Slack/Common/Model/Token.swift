//
//  Token.swift
//  Instagram-Slack
//
//  Created by 황지웅 on 2021/04/02.
//

import Foundation

class Token: ObservableObject {
    @Published var accessToken : String
    var grantType : String
    var refreshToken : String
    var accessTokenExpiresIn : String
    init(){
        accessToken = ""
        grantType = ""
        refreshToken = ""
        accessTokenExpiresIn = ""
    }
    init(grantType: String, accessToken: String, refreshToken: String, accessTokenExpiresIn: String) {
        self.grantType = grantType
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.accessTokenExpiresIn = accessTokenExpiresIn
    }
    
}

