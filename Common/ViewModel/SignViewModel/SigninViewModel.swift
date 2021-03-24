//
//  SigninViewModel.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/24.
//

import Foundation

final class SigninViewModel: ObservableObject {
    @Published var signinPushed = false
    
    private var username : String
    private var password : String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func signin(){
        
    
    }
}
