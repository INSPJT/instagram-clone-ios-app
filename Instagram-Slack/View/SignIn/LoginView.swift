//
//  LoginView.swift
//  Instagram-Slack
//
//  Created by 황지웅 on 2021/04/02.
//

import SwiftUI
import Alamofire
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
struct LoginView: View {
    @EnvironmentObject var token: Token
    @State var email: String = ""
    @State var password: String = ""
    
    @State var done: Bool = false
    @State var tag:Int? = nil
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
extension LoginView{
    var line : some View{
        VStack {
            Divider().background(lightGreyColor)
        }
        .padding(.horizontal, 22)
    }
    func Verify(){
        if self.email != "" && self.password != "" {
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
                        print("TOKEN: \(accessToken)")
                        token.refreshToken = refreshToken
                        token.grantType = grantType
                    }
                }
            }
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
