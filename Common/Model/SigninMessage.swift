//
//  SigninMessage.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/24.
//

import Foundation

final class SigninMessage: Codable{
    
    var username : String
    var password : String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}
