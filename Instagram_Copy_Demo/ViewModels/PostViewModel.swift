//
//  PostViewModel.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-09.
//

import SwiftUI

class PostViewModel: ObservableObject {
    
    private var comments: [Comment]
    private(set) var descriptionComment: Comment = Comment()
    private(set) var shouldShowDescriptionAsComment: Bool = false
    @Published var isLiked = false // Track like status
    @Published var showHeart = false // Control heart animation
    @Published var isFollowing = false // Track Follow status
    @Published var showOptionsSheet = false // Show/hide the options sheet
    @Published var navigateToProfile = false // Navigate to ProfileView
    @Published var isBookmarked = false // Track bookmarked status

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
    
    init() {
        comments = [Comment(), Comment(), Comment()]
    }
    
    func setDescriptionComment(as descriptionComment: Comment) {
        self.descriptionComment = descriptionComment
    }
    
    func showDescriptionComment() {
        shouldShowDescriptionAsComment = true
    }
    
    func hideDescriptionComment() {
        shouldShowDescriptionAsComment = false
    }
    
    func getComments() -> [Comment] {
        if shouldShowDescriptionAsComment {
            return [descriptionComment] + comments
        }
        return comments
    }
    
    func getCommentsCount() -> Int {
        comments.count
    }
}
