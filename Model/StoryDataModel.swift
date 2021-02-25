//
//  StoryDataModel.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/02/25.
//

import SwiftUI

struct StroryDataModel: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var isSeen: Bool
    var myStory: Bool
    var myStoryActive: Bool
}

