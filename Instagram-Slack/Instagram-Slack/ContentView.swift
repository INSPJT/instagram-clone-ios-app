//
//  ContentView.swift
//  Instagram-Slack
//
//  Created by 황지웅 on 2021/04/02.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @EnvironmentObject var token:Token
    var body: some View {
        if checkID() == false{
            LoginView()
        }else{
            MainView()
        }
    }
}

extension ContentView{
    func checkID()->Bool{
        let chain = keyChain()
        var email: String = ""
        var password: String = ""
        if let em = chain.read("login", account: "email"){
            email = em
        }else{
            email = ""
        }
        if let pa = chain.read("login", account: "password"){
            password = pa
        }else{
            password = ""
        }
        if email != "" && password != ""{
            return true
        }
        return false
    }
}

