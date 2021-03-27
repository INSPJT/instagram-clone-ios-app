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
        let resourceString = "http://117.17.196.61/\(endpoint)"
        //let resourceString = "http://www.yurivon.ml/\(endpoint)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func signin(_ requestBody:SigninMessage, completion: @escaping(Result<AuthToken, APIError>) -> Void) {
        
        do{
            var request = URLRequest(url: URL(string:"http://117.17.196.61/auth/signin")!)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = try JSONEncoder().encode(requestBody)
            request.timeoutInterval = 20
            print(request.httpMethod!)
            
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let jsonData = data else {
                    
                    completion(.failure(.responseProblem))
                    return
                }
                
                do {
                    let responseData = try JSONDecoder().decode(AuthToken.self, from: jsonData)
                    completion(.success(responseData))
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
