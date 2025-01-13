//
//  PostImageVIewModel.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 1/8/25.
//

import SwiftUI

class PostImageViewModel: ObservableObject {
    @Published var isLiked = false // Track like status
    @Published var showHeart = false // Control heart animation
    @Published var isFollowing = false // Track Follow status
    @Published var showOptionsSheet = false

    func handleDoubleTap() {
        withAnimation(.spring()) {
            isLiked.toggle()
            showHeart = isLiked
            
            if showHeart {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    self.showHeart = false
                }
            }
        }
    }
}
