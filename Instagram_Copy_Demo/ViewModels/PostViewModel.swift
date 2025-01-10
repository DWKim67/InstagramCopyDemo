//
//  PostViewModel.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-09.
//

import SwiftUI

class PostViewModel: ObservableObject {
    
    private(set) var comments: [Comment]
    
    init() {
        comments = [Comment(), Comment(), Comment()]
    }
}
