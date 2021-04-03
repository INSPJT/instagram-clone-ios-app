//
//  User.swift
//  Instagram-Slack
//
//  Created by 황지웅 on 2021/04/02.
//

import Foundation

class User: Codable{
    private var email: String
    private var password: String
    init(){
        self.email = ""
        self.password = ""
    }
    init(_ email: String, _ password: String){
        self.email = email
        self.password = password
    }
    func set(_ email: String, _ password: String){
        self.email = email
        self.password = password
    }
    func getEmail()->String{
        return self.email
    }
    func getPassword()->String{
        return self.password
    }
}
