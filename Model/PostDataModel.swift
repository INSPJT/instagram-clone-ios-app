//
//  PostDataModel.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/02/25.
//

import SwiftUI

struct PostDataModel: Identifiable {
    var id = UUID()
    var profileImage: String
    var userName: String
    var location: String!
    var postImage: String!
    var dimensionImage:Dimensions!
    var isLiked: Bool
    var isSaved: Bool
    var likes: Int!
    var caption: String!
    var time: String
    var isSponsored: Bool
    var isVideo:Bool
    var dimensionVideo:Dimensions!
    var videoUrl:String!
    var views:Int!
}

struct Dimensions: Identifiable {
    var id = UUID()
    var width: Float
    var height: Float
}

