//
//  SignUp.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/03/28.
//

import Foundation

final class SignUpMessage: Codable{
    var displayId :String
    var email: String
    var nickname : String
    var password : String
    
    init(displayId: String, email: String, nickname: String, password: String) {
        self.displayId = displayId
        self.email = email
        self.nickname = nickname
        self.password = password
    }
}
