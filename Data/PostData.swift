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
    
    PostDataModel(id: UUID(), profileImage: "demo",postImage: nil, dimensionImage: nil, isLiked: true,likes: nil, caption: "Hi Guys! Today in design to code series I've come up with SwiftUI project hope it helps you!.", time: "2 hours ago",  views: 1200),
    
    PostDataModel(id: UUID(), profileImage: "user1",postImage: "post1", dimensionImage: Dimensions(width: 1080, height: 1080), isLiked: true, likes: 380, caption: "Hey guys, learning about Widgets today. With the help of widgets, you can provide information about your apps without even opening it. You can customize it however you like, and they come in three sizes. I felt that it was about time that I learned it.", time: "20 hours ago", views: nil),
    
    PostDataModel(id: UUID(), profileImage: "user2", postImage: "post2", dimensionImage: Dimensions(width: 1080, height: 1350), isLiked: false,  likes: 747, caption: "On the 3rd day of #postmas the Apple gods decided my iPhone 12 Pro should arrive early! 🤩", time: "2 months ago", views: nil),
    
    PostDataModel(id: UUID(), profileImage: "youtubelogo", postImage: "youtube-post", dimensionImage: Dimensions(width: 1000, height: 1000), isLiked: true,  likes: 19822, caption: "Visit YouTube Creator Academy to get started with your channel and make your YouTube debut.", time: "", views: nil),
    
    PostDataModel(id: UUID(), profileImage: "demo", postImage: "youtube-post", dimensionImage: nil, isLiked: true,  likes: nil, caption: "Hi Guys! Today in design to code series I've come up with SwiftUI project hope it helps you!.", time: "4 days ago",  views: 1200)
]
