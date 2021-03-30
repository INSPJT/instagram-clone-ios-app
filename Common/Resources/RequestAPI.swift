//
//  RequestAPI.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/24.
//
import Alamofire
import Foundation

enum APIError:Error {
    case responseProblem
    case decodingPorblem
    case encodingProblem
}

struct APIRequest {
    let resourceURL : URL
    
    init(endpoint: String) {
        let resourceString = "https://yurivon.ml/\(endpoint)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func signin(_ requestBody:SigninMessage, completion: @escaping(Result<SigninMessage, APIError>) -> Void) {
        do{
            var urlRequest = URLRequest(url: resourceURL)
            urlRequest.httpMethod = "POST"
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpBody = try JSONEncoder().encode(requestBody)
            urlRequest.timeoutInterval = 20
            print(urlRequest.httpBody)
            URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                
                guard error == nil else {
                    
                    completion(.failure(.responseProblem))
                    return
                }
                
                do {
                    let responseData = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary
                    guard let jsonObj = responseData else {
                        return
                    }
                    let accessToken = jsonObj["accessToken"] as! String
                    let refreshToken = jsonObj["accessToken"] as! String
                    //let accessTokenExpiresIn = jsonObj["accessTokenExpiresIn"] as! String
                    print("TOKEN : \(accessToken)  \(refreshToken)")
                    let tk = TokenUtils()
                    let url = "https://yurivon.ml/auth/signin"
                    tk.create(url, account: "accessToken", value: accessToken)
                    tk.create(url, account: "refreshToken", value: refreshToken)
                    //completion(.success(.))
                } catch {
                    completion(.failure(.decodingPorblem))
                }
            }
            .resume()
        } catch {
            completion(.failure(.encodingProblem))
        }
    }

    func signup(_ requestBody:SignUpMessage, completion: @escaping(Result<SignUpMessage, APIError>) -> Void) {
        do{
            var urlRequest = URLRequest(url: resourceURL)
            urlRequest.httpMethod = "POST"
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpBody = try JSONEncoder().encode(requestBody)
            urlRequest.timeoutInterval = 20
            print("REQUEST!")
            print(urlRequest.httpBody!)
            URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                guard error == nil else {
                    
                    completion(.failure(.responseProblem))
                    return
                }
                
                do {
                    let responseData = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(responseData)
                    //completion(.success(.))
                } catch {
                    completion(.failure(.decodingPorblem))
                }
            }
            .resume()
        } catch {
            completion(.failure(.encodingProblem))
        }
    }
}
