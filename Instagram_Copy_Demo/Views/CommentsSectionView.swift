//
//  CommentsSectionView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2024-12-30.
//

import SwiftUI

struct CommentsSectionView: View {
    
    var comments: [Comment]
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Spacer()
                    Image(systemName: "paperplane")
                        .padding(.trailing, 10)
                }
                Text("Comments")
            }
            .padding(.top, 30)
            Divider()
                .padding(.top, 10)
            ScrollView {
                VStack {
                    VStack (spacing: 25) {
                        ForEach(comments, id: \.self) { comment in
                            CommentView(comment: comment)
                        }
                    }
                    Spacer()
                }
            }
            .padding(.top)
        }
        
        
    }
}

#Preview {
    CommentsSectionView(comments: [Comment(), Comment(), Comment()])
}
