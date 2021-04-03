//
//  SignUpView.swift
//  Instagram-Slack
//
//  Created by 황지웅 on 2021/04/02.
//

import SwiftUI
import Alamofire

struct SignUpView: View {
    @EnvironmentObject var token: Token
    @State var displayId: String = ""
    @State var email: String = ""
    @State var nickname: String = ""
    @State var password: String = ""
    @State var repassword: String = ""
    
    @State var isCorrectPW: Bool = false
    @State var showingAlert: Bool = false
    @State var isSignup: Bool = false
    var body: some View {
        
        return NavigationView{
            VStack{
                Spacer()
                Text("InstaClone")
                    .font(.custom("OleoScript-Regular", size: 50))
                    .padding(.bottom, 20)
                DisplayId
                Email
                NickName
                Password
                RePassword
                btn
                Spacer()
                Spacer()
                    
            }
//            .navigationBarHidden(true)
//            .navigationBarBackButtonHidden(true)
        }
    }
    func isCorrect()->Bool{
        if password == repassword {
            return true
        }
        return false
    }
    func SignUP(){
        if self.email != "" && self.nickname != "" && self.displayId != "" && self.nickname != "" && self.password != "" {
            let postRequest = API()
            let signupinfo = SignUpModel(displayId: displayId, email: email, nickname: nickname, password: password)
            //
            //let chain = keyChain()
            AF.request(postRequest.getSignUpURL(), method: .post, parameters: signupinfo, encoder: JSONParameterEncoder.default).response {response in
                if let code = response.response?.statusCode{
                    if String(code) ==  "201"{
                        login(User(email, password))
                    }
                }
                return
            }
        }
    }
    func login(_ user: User){
        let postRequest = API()
        let signinInfo = User(self.email, self.password)
        let chain: keyChain = keyChain()
        AF.request(postRequest.getSignInURL(), method: .post, parameters: signinInfo, encoder: JSONParameterEncoder.default).response {response in
            chain.create("login", account: "email", value: signinInfo.getEmail())
            chain.create("login", account: "password", value: signinInfo.getPassword())
            if let data = response.data{
                if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String : Any] {
                    let grantType:String = json["grantType"] as! String
                    let accessToken:String = json["accessToken"] as! String
                    let refreshToken:String = json["refreshToken"] as! String
                    token.accessToken = accessToken
                    token.refreshToken = refreshToken
                    token.grantType = grantType
                }
            }
        }
    }
}

extension SignUpView{
    var btn: some View{
        Button(LocalizedStringKey("SignUP"), action:{
            isCorrectPW = self.isCorrect()
            if isCorrectPW{
                self.SignUP()
            }
            else{
                self.showingAlert = true
            }
            print("Is Button")
        })
        .font(.system(size:15))
        .foregroundColor(.white)
        .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.black)
        .cornerRadius(5)
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("에러"), message: Text("비밀번호 오류"), dismissButton: .default(Text("OK")))
        }
    }
    var DisplayId: some View{
        TextField("보여질 아이디", text: $displayId)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 3)
            .padding(.horizontal, 10)
    }
    var Email: some View{
        TextField("이메일", text: $email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 3)
            .padding(.horizontal, 10)
    }
    var NickName: some View{
        TextField("닉네임", text: $nickname)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 3)
            .padding(.horizontal, 10)
    }
    var Password: some View{
        SecureField("비밀번호", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 3)
            .padding(.horizontal, 10)
    }
    var RePassword: some View{
        SecureField("비밀번호 확인", text: $repassword)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 3)
            .padding(.horizontal, 10)
    }
        
}
struct MyPostsContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
