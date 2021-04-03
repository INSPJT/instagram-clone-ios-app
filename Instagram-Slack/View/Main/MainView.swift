//
//  MainView.swift
//  Instagram-Slack
//
//  Created by 황지웅 on 2021/04/02.
//

import SwiftUI
import Alamofire

struct MainView: View {
    @EnvironmentObject var token: Token
    var body: some View {
        Button(action: {
            let chain = keyChain()
            chain.delete("login", account: "email")
            chain.delete("login", account: "password")
            token.accessToken = ""
            token.refreshToken = ""
            token.grantType = ""
        }, label: {
            Text("Log Out")
        })
        
        Button(action: op, label: {
            Text("GET!")
        }).onAppear(perform: login)
    }
}
extension MainView{
    func op(){
        if token.accessToken != ""{
            get()
        }else{
            login()
        }
    }
    func get(){
        let postRequest = API()
        let Auth: String = token.grantType + " " + token.accessToken
        print(Auth)
        let headers: HTTPHeaders = [
            "Accept": "*/*",
            "Authorization": Auth
        ]
        
        AF.request("https://yurivon.ml/member/followings", method: .get, headers: headers).responseJSON { response in
            debugPrint(response)
        }
    }
    func login(){
        let postRequest = API()
        let chain = keyChain()
        let demail = chain.read("login", account: "email")
        let dpassword = chain.read("login", account: "password")
        guard let email = demail else{
            return
        }
        guard let password = dpassword else{
            return
        }
        let signinInfo = User(email, password)
        AF.request(postRequest.getSignInURL(), method: .post, parameters: signinInfo, encoder: JSONParameterEncoder.default).response {response in
            if let data = response.data{
                if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String : Any] {
                    let grantType:String = json["grantType"] as! String
                    let accessToken:String = json["accessToken"] as! String
                    let refreshToken:String = json["refreshToken"] as! String
                    token.accessToken = accessToken
                    token.refreshToken = refreshToken
                    token.grantType = grantType
                    print("TOKEN: \(accessToken) \(grantType)")
                }
            }
        }
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
