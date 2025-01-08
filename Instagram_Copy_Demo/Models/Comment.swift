//
//  Comment.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-08.
//

import Foundation

struct Comment {
    var userName: String
    var datePosted: Date
    var comment: String
    var imageName: String = "person.crop.circle"
    
    func getDateByLongAgo() -> String {
        let days = Calendar.current.dateComponents([.day], from: datePosted, to: Date())
        let weeks = (days.day ?? 0) / 7
        return "\(weeks)w"
    }
    
}
