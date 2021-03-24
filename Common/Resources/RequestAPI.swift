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
        let resourceString = "http://www.yurivon.ml/\(endpoint)"
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
            let session = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let jsonData = data else {
                    completion(.failure(.responseProblem))
                    return
                }
                
                do{
                    let responseData = try JSONDecoder().decode(SigninMessage.self, from: jsonData)
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
