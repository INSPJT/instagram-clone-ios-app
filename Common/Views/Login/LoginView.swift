//
//  LoginView.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/04.
//

import Foundation
import SwiftUI
import Alamofire


let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
struct LoginContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    @State var done: Bool = false
    @State var tag:Int? = nil
    @ObservedObject var token: TokenStorage
    var body: some View {
        
        return NavigationView{
            VStack{
                Spacer()
                Text("InstaClone")
                    .font(.custom("OleoScript-Regular", size: 50))
                    .padding(.bottom, 20)
                mailField
                passField
                Login
                //                Login
                helplog
                    .padding(.top, 10)
                    .minimumScaleFactor(0.001)
                
                HStack{
                    line
                    Text("or")
                    line
                }
                
                HStack{
                    Image(systemName: "applelogo")
                    Text("Log in with Apple")
                }
                
                Spacer()
                GoSignUp
            }
            .navigationBarHidden(true)
        }
    }
    
}
extension LoginContentView{
    var line : some View{
        VStack {
            Divider().background(lightGreyColor)
        }
        .padding(.horizontal, 22)
    }
    func Verify(){
        if self.email != "" && self.password != "" {
            let postRequest = APIRequest(endpoint: "auth/signin")
            let signinInfo = SigninMessage(email: self.email, password: self.password)
            postRequest.signin(signinInfo, completion: { result in
                print(result)
                switch result {
                case .success(let message):
                    print("success")
                    let tk = TokenUtils()
                    if let str = tk.read("https://yurivon.ml/auth/signin", account: "accessToken"){
                        token.tk = str
                    }
                    print("TOKEN! \(token.tk)")
                //ContentView()
                case .failure(let error):
                    print("An error occured \(error)")
                }
            })
            
        } else {
        }
    }
    var helplog: some View{
        HStack{
            Text("Forgot your login details?")
                .fontWeight(.light)
                .font(.system(size:10))
            Text("Get help signing in.")
                .fontWeight(.light)
                .font(.system(size:10))
        }
    }
    var Login: some View{
        Button(LocalizedStringKey("Log in"), action:{
            self.Verify()
        })
        .font(.system(size:15))
        .foregroundColor(.white)
        .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.black)
        .cornerRadius(5)
    }
    var mailField: some View{
        TextField("Username", text: $email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 10)
            .padding(.horizontal, 20)
    }
    var passField: some View{
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 10)
            .padding(.horizontal, 20)
    }
    
    var GoSignUp: some View{
        HStack{
            Text("Don't hava an account?")
                .fontWeight(.light)
                .font(.system(size:12))
            NavigationLink(
                destination: SignUpView().navigationBarHidden(true).navigationBarBackButtonHidden(true),
                label: {
                    Text("Sign UP")
                        .font(.system(size: 12))
                })
        }
    }
}
//struct LoginContentView_Previews: PreviewProvider {
//
//
//    static var previews: some View {
//        LoginContentView()
//    }
//}
