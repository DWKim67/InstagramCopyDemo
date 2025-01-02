//
//  DateFormatter.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2024-12-30.
//

import Foundation

extension DateFormatter {
    static var instagramPostStyle: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd"
        return formatter
    }
    
}
