//
//  SignUpModel.swift
//  Instagram-Slack
//
//  Created by 황지웅 on 2021/04/02.
//

import Foundation

final class SignUpModel: Codable{
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
