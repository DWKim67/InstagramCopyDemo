//
//  PostModel.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 1/18/25.
//

import SwiftUI

struct PostModel {
    var isLiked: Bool = false
    var isBookmarked: Bool = false
    var images: [String] = [
            "https://i.imgur.com/DVSDh1m.png",
            "https://i.imgur.com/h3J906Q.png",
            "https://i.imgur.com/N5XmzyD.png"
        ]
    
    mutating func handleDoubleTap() -> Bool {
        withAnimation(.spring()) {
            isLiked.toggle()
        }
        return isLiked
    }
    
    mutating func toggleBookmark() {
        isBookmarked.toggle()
    }
}
