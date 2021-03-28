//
//  RequestAPI.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/24.
//

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
    
    func signin(_ requestBody:SigninMessage, completion: @escaping(Result<AuthToken, APIError>) -> Void) {
        
        do{
            var request = URLRequest(url: URL(string:"https://yurivon.ml/auth/signin")!)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = try JSONEncoder().encode(requestBody)
            request.timeoutInterval = 20
            print(request.httpMethod!)
            
            URLSession.shared.dataTask(with: request) { (data, response, error) in
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
    
//    func signup(_ requestBody:SignupMessage, completion: @escaping(Result<String, APIError) -> Void) {
//        do{
//            var request = URLRequest(url: URL(string:"https://yurivon.ml/auth/signup")!)
//            request.httpMethod = "POST"
//            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//            request.httpBody = try JSONEncoder().encode(requestBody)
//            request.timeoutInterval = 20
//            print(request.httpMethod!)
//
//            URLSession.shared.dataTask(with: request) { (data, response, error) in
//                guard error == nil else {
//
//                    completion(.failure(.responseProblem))
//                    return
//                }
//
//                do {
//                    let responseData = try JSONSerialization.jsonObject(with: data!, options: [])
//                    print(responseData)
//                    //completion(.success(.))
//                } catch {
//                    completion(.failure(.decodingPorblem))
//                }
//            }
//            .resume()
//        } catch {
//            completion(.failure(.encodingProblem))
//        }
//    }
}
