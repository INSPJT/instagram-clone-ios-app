//
//  PostModel.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/15.
//

import Foundation

struct PostModel : Identifiable{
    var id: UUID = UUID()
    var imageURL: [String]
    //author, text, like, imageURL count etc..
    static let PostModelsURL : [PostModel] = [
        PostModel(imageURL: [
            "https://images.unsplash.com/photo-1458022479614-14737487b68c?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNDY2&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1425321395722-b1dd54a97cf3?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNDYx&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ])
    ]
    
    static let taggedURL : [PostModel] = [
        PostModel(imageURL: [
            "https://images.unsplash.com/photo-1458022479614-14737487b68c?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNDY2&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ]),
        PostModel(imageURL: ["https://images.unsplash.com/photo-1559286023-3d27c0e06d80?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218fHx8fHx8fHwxNjE1ODIxNTA4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080"
            ])
    ]
}
