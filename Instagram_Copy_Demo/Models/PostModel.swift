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
