//
//  PostImageVIewModel.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 1/8/25.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var isLiked = false // Track like status
    @Published var showHeart = false // Control heart animation
    @Published var isFollowing = false // Track Follow status
    @Published var showOptionsSheet = false // Show/hide the options sheet
    @Published var navigateToProfile = false // Navigate to ProfileView

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
