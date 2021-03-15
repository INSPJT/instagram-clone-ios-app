//
//  MyPosts.swift
//  slack-clone-ios-app
//
//  Created by 박건욱 on 2021/03/15.
//

import Foundation
import SwiftUI
import Combine

extension String {
    func load() -> UIImage {
        
        do{
            guard let url = URL(string:self) else {
                return UIImage()
            }
            let data : Data = try
                Data(contentsOf:url)
            
            return UIImage(data: data) ?? UIImage()
        } catch {
            
        }
        
        return UIImage()
    }
}

struct MyPostsContentView : View {
    static let column :Int = 3
    let width = (UIScreen.main.bounds.width/3)-1
    
    var imageURL : [String]
    
    init(imageURL : [String]) {
        self.imageURL = imageURL
    }
    
    var body: some View{
        //한번에 18개씩 받아오고 무한스크롤링으로 표현
       ZStack{
        Image(uiImage: imageURL[0].load())
            .resizable()
            .frame(width: width, height: width)
            .padding(.all, -1)
        }
    
    }
}


//struct MyPostsContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyPostsContentView(row: 0, Column: 1, posts: Post.postsURL)
//    }
//}
