//
//  AlamoRequest.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/03/30.
//

import Foundation

struct AlamoRequest{
    let resourceURL : URL
    
    init(endpoint: String) {
        let resourceString = "https://yurivon.ml/\(endpoint)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    
}
