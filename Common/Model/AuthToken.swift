//
//  SigninMessage.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/24.
//

import Foundation

final class AuthToken: Codable{
    
    var grantType : String
    var accessToken : String
    var refreshToken : String
    var accessTokenExpiresIn : String

    init(grantType: String, accessToken: String, refreshToken: String, accessTokenExpiresIn: String) {
        self.grantType = grantType
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.accessTokenExpiresIn = accessTokenExpiresIn
    }
}
