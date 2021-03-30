//
//  SignUpView.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/03/27.
//

import SwiftUI
import Foundation
var line : some View{
    VStack {
        Divider().background(lightGreyColor)
    }
    .padding(.horizontal, 22)
}
struct SignUpView: View {
    @State var displayId: String = ""
    @State var email: String = ""
    @State var nickname: String = ""
    @State var password: String = ""
    @State var repassword: String = ""
    
    @State var isCorrectPW: Bool = false
    @State var showingAlert: Bool = false
    @State var isSignup: Bool = false
    var body: some View {
        VStack{
            Spacer()
            Text("InstaClone")
                .font(.custom("OleoScript-Regular", size: 50))
                .padding(.bottom, 20)
            TextField("보여질 아이디", text: $displayId)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
                .padding(.horizontal, 10)
            TextField("이메일", text: $email)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
                .padding(.horizontal, 10)
            TextField("닉네임", text: $nickname)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
                .padding(.horizontal, 10)
            SecureField("비밀번호", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
                .padding(.horizontal, 10)
            SecureField("비밀번호 확인", text: $repassword)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
                .padding(.horizontal, 10)
            
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
            Spacer()
            Spacer()
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
            let postRequest = APIRequest(endpoint: "auth/signup")
            let signupinfo = SignUpMessage(displayId: self.displayId, email: self.email, nickname: self.nickname, password: self.password)
            
            postRequest.signup(signupinfo, completion: { result in
                switch result {
                case .success(let message):
                    print("success")
                    self.isSignup = true
                case .failure(let error):
                    print("An error occured \(error)")
                }
            })
        } else {
            //로그인 에러 화면
            Alert(title: Text("Title"), message: Text("This is a alert message"), dismissButton: .default(Text("Dismiss")))
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
