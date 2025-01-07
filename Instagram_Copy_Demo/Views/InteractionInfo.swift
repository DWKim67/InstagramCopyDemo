//
//  InteractionInfo.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-02.
//

import SwiftUI

extension InteractionInfo {
    enum InteractionType {
        case likes
        case comments
        case shares
        
        var imageName: String {
            switch self {
            case .likes:
                return "heart"
            case .comments:
                return "bubble.right"
            case .shares:
                return "paperplane"
            }
        }
        
        var interactionNumber: Int {
            switch self {
            case .likes:
                return 500
            case .comments:
                return 2
            case .shares:
                return 4
            }
        }
    }
    
}

struct InteractionInfo: View {
    
    var type: InteractionType
    
    var body: some View {
        HStack {
            Image(systemName: type.imageName)
            Text("\(type.interactionNumber)")
        }
    }
}

#Preview {
    InteractionInfo(type: .likes)
}
