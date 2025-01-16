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
    var viewModel: PostViewModel
    @State var shouldShowSheets: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {
                buttonActionOnTypes(&shouldShowSheets)
            }, label: {
                Image(systemName: type.imageName)
            })
            .buttonStyle(.plain)
            
            Text("\(getInteractionNumber())")
        }
        .sheet(isPresented: $shouldShowSheets, content: {
            ConditionalSheetView(type: type, viewModel: viewModel)
        })
    }
   
}



#Preview {
    InteractionInfo(type: .likes, viewModel: PostViewModel())
}
