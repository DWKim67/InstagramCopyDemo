//
//  InteractionInfo+Ext.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-13.
//

import SwiftUI

extension InteractionInfo {
    internal struct ConditionalSheetView: View {
        var type: InteractionType
        var viewModel: PostViewModel
        
        var body: some View {
            switch type {
                case .likes:
                    VStack{}
                case .comments:
                    CommentsSectionView(comments: viewModel.getComments())
                        .presentationDetents([.large, .medium, .fraction(0.75)])
                case .shares:
                    VStack{}
            }
        }
    }
    
    internal func buttonActionOnTypes(_ shouldSheetShow: inout Bool) {
        switch type {
            case .likes:
                print("Increase the like amount")
            case .comments:
                shouldSheetShow = true
                viewModel.hideDescriptionComment()
            case .shares:
                shouldSheetShow = true
        }
    }
    
    internal func getInteractionNumber() -> Int {
        switch type {
            case .likes:
                500
            case .comments:
                viewModel.getCommentsCount()
            case .shares:
                4
        }
    }
}
