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
}
