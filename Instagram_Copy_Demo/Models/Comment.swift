//
//  Comment.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-08.
//

import Foundation

struct Comment: Hashable {
    let id = UUID()
    var username: String = "JohnDoe123"
    var datePosted: Date = Date().addingTimeInterval(-200000)
    var comment: String = "Wow, that looks cool!"
    var imageName: String = "person.crop.circle"
    var isLiked: Bool = false
    var isPostDescription: Bool = false
    
    func getDateByLongAgo() -> String {
        let days = Calendar.current.dateComponents([.day], from: datePosted, to: Date())
        let weeks = (days.day ?? 0) / 7
        return "\(weeks)w"
    }
    
    mutating func toggleLike() {
        isLiked.toggle()
    }
    
    static func createPostDescriptionComment(username: String, datePosted: Date = Date(), comment: String) -> Comment {
        Comment(username: username, datePosted: datePosted, comment: comment, isPostDescription: true)
    }
    
}
