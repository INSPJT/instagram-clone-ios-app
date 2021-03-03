//
//  NewsView.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        HStack{
            Image(systemName: "house")
                .instaStylePrimary()
                .frame(width: 20)
                .rotationEffect(.degrees(-28))
            //
            Text("Lerem!sadasdasdasdsadasdasdasdasdfweafewfwgweewfwefwefwefwefwefewfewf")
                .instaStylePrimary()
            Image(systemName: "xmark")
                .instaStylePrimary()
                .frame(width:20)
                .foregroundColor(.gray)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
