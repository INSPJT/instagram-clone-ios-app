//
//  PostView.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/02/25.
//

import SwiftUI

struct PostView: View {
    
    @State var postData: PostDataModel
    
    @State private var isLiked: Bool = false
    @State private var isSaved: Bool = false
    @State private var isLikedAnimation: Bool = false
    @State private var isMute: Bool = true
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(postData: PostData[4])
            .previewLayout(.sizeThatFits)
    }
}
