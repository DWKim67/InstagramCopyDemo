//
//  InteractionsBarView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-02.
//

import SwiftUI

struct InteractionsBarView: View {
    
    @State var isBookmarked: Bool = false
    @Binding var viewModel: PostViewModel
    
    var body: some View {
        HStack {
            HStack (spacing: 14) {
                InteractionInfo(type: .likes, viewModel: viewModel)
                InteractionInfo(type: .comments, viewModel: viewModel)
                InteractionInfo(type: .shares, viewModel: viewModel)
            }
            Spacer()
            Button(action: {
                isBookmarked.toggle()
            }, label: {
                Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
            })
            .buttonStyle(.plain)
        }
        .font(.title3)
    }
}



#Preview {
    InteractionsBarView(viewModel: .constant(PostViewModel()))
}
