//
//  SigninMessage.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/24.
//

import Foundation

final class SigninMessage: Encodable{
    
    var email : String
    var password : String
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
