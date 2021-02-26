//
//  StoryView.swift
//  slack-clone-ios-app
//
//  Created by 황지웅 on 2021/02/25.
//

import SwiftUI

struct StoryView: View {
    var tempString = ["Jiwoong","GeonUk", "Dale","Juhyeok","Sangdo" ]
    @State var storyData: [StoryDataModel]
    private let gradient = LinearGradient( gradient: Gradient(colors: [Color.yellow, Color(red: 252/255, green: 175/255, blue: 69/255) , Color.red, Color(red: 225/255, green: 48/255, blue: 108/255), Color(red: 193/255, green: 53/255, blue: 132/255) , Color(red: 131/255, green: 58/255, blue: 180/255)]), startPoint: .bottomLeading, endPoint: .topTrailing)
    
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        ForEach(tempString, id: \.self){ str in
            Text(str)            
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(storyData: StoryData)
            .previewLayout(.sizeThatFits)
    }
}
