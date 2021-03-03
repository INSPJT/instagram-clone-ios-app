//
//  MiniAddCommentView.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import SwiftUI

struct MiniAddCommentView: View {
    var person: Person
    @State var commentText: String = ""
    @State var showSubTextField = false
    @State var height: CGFloat = 0
    @Binding var clickedOut: Bool
    let placeholder = "Add a Comment"
    
    func emojiButton(_ emoji: String) -> Button<Text> {
        Button{
            if self.showSubTextField == false{
                self.showSubTextField = true
            }
            self.commentText += emoji
        } label: {
            Text(emoji)
        }
    }
    
    var body: some View {
        ZStack{
            HStack(spacing: 10){
                PersonThumb(person: person, width: 15, lineWidth: 0.5)
                
                TextField("Add a comment", text: $commentText, onEditingChanged:{
                    _ in
                    if self.clickedOut == true{
                        self.clickedOut = false
                    }
                    self.showSubTextField = true
                })
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color("PrimaryColor"), lineWidth: 0.1))
                
                
                emojiButton("♥")
                emojiButton("👍")
                
                Image(systemName: "plus.circle")
                    .instaStylePrimary()
                    .frame(width: 15)
                    .padding(.trailing, 44)
            }
            .onAppear{
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification
                                                       , object: nil, queue:.main) { (noti) in
                    
                    let value =
                        noti.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                    self.height = 0
                    
                }
                
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification,
                                                       object: nil, queue: .main) {(noti) in
                    self.height = 0
                    self.showSubTextField = false
                }
            }
            if self.showSubTextField == true{
                VStack(spacing:12){
                    HStack(spacing: 10){
                        emojiButton("♥")
                        emojiButton("👍")
                        emojiButton("♥")
                        emojiButton("👍")
                        emojiButton("♥")
                        emojiButton("👍")
                        emojiButton("♥")
                        emojiButton("👍")
                    }
                    .font(.system(size:20))
                    .padding(.top, 10)
                    HStack{
                        PersonThumb(person: person, width: 30, lineWidth: 2)
                            .padding(.trailing,10)
                        
                        HStack{
                            CustomTextField(text: $commentText, isFirstResponder: self.showSubTextField)
                            
                            Button {
                                
                            } label : {
                                Text("Post")
                                    .foregroundColor(Color("SecondaryColor"))
                                    .font(.system(size: 14))
                                    .opacity(0.5)
                            }
                            .padding(.trailing, 10)
                        }
                        .frame(height: 35)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color("SecondaryColor"), lineWidth: 0.25)
                        )
                    }
                    .frame(height: 50)
                    .padding(.leading, 4)
                    .padding(.trailing, 4)
                }
                
                .background(Color("PrimaryColorInvert"))
                .offset(y:(-self.height / 2) - 12)
                .padding(.trailing, 35)
                .animation(.spring())
            }
            
        }
        .onChange(of: self.clickedOut){ [clickedOut] clickedOutNew in
            if clickedOutNew == true {
                self.showSubTextField = false
            }
            
        }
    }
}

