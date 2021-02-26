//
//  PostData.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/02/25.
//


import Foundation
/*
 struct PostDataModel: Identifiable {
     var id = UUID()
     var profileImage: String
     var postImage: String!
     var dimensionImage:Dimensions!
     var isLiked: Bool
     var likes: Int!
     var caption: String!
     var time: String
     var views:Int!
 }
 **/
var PostData: [PostDataModel] = [
    
    PostDataModel(id: UUID(), profileImage: "demo",postImage: nil, dimensionImage: nil, isLiked: true,likes: nil, caption: "인스타 클론코딩", time: "2 hours ago",  views: 1200),
    
    PostDataModel(id: UUID(), profileImage: "user1",postImage: "post1", dimensionImage: Dimensions(width: 1080, height: 1080), isLiked: true, likes: 380, caption: "클론코딩", time: "20 hours ago", views: nil),
    
    PostDataModel(id: UUID(), profileImage: "user2", postImage: "post2", dimensionImage: Dimensions(width: 1080, height: 1350), isLiked: false,  likes: 747, caption: "On 프레미스", time: "2 months ago", views: nil),
    
    PostDataModel(id: UUID(), profileImage: "youtubelogo", postImage: "youtube-post", dimensionImage: Dimensions(width: 1000, height: 1000), isLiked: true,  likes: 19822, caption: "홀리싯;", time: "", views: nil),
    
    PostDataModel(id: UUID(), profileImage: "demo", postImage: "youtube-post", dimensionImage: nil, isLiked: true,  likes: nil, caption: "헬로월드", time: "4 days ago",  views: 1200)
]
