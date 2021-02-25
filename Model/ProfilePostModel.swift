//
//  ProfilePostModel.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/02/25.
//

import Foundation

struct ProfilePostModel: Identifiable{
    let id = UUID()
    let image: String
    let type: String
}
