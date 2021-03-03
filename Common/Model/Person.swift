//
//  Person.swift
//  SwiftUI_Insta_Clone
//
//  Created by 황지웅 on 2021/02/28.
//

import Foundation

struct Person: Identifiable{
    var id: UUID = UUID()
    var name: String
    var image: String
}
