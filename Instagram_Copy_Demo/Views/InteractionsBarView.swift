//
//  InteractionsBarView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-02.
//

import SwiftUI

struct InteractionsBarView: View {
    
    @State var isBookmarked: Bool = false
    
    var body: some View {
        HStack {
            HStack (spacing: 14) {
                InteractionInfo(type: .likes)
                InteractionInfo(type: .comments)
                InteractionInfo(type: .shares)
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
    InteractionsBarView()
}
