//
//  AlamofireAPI.swift
//  Instagram-Slack
//
//  Created by 황지웅 on 2021/04/02.
//

import Foundation
import Alamofire

class API {
    static let shared: API = API()
    private let signinURL = "https://yurivon.ml/auth/signin"
    private let signupURL = "https://yurivon.ml/auth/signup"
    private let getfollowers = "https://yurivon.ml/member/follwers"
    private let myinfo = "https://yurivon.ml/member/profiles"
    private var request: DataRequest? {
        didSet {
            oldValue?.cancel()
        }
    }
    
    func getSignInURL()->String {
        return signinURL
    }
    func getSignUpURL()->String {
        return signupURL
    }
    func getFollowersURL()->String{
        return getfollowers
    }
    func getprofile()->String{
        return myinfo
    }
    
    
}
