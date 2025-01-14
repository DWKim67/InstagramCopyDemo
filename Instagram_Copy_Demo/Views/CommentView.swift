//
//  CommentView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-07.
//

import SwiftUI

struct CommentView: View {
    
    @State var comment: Comment = Comment()
    
    var body: some View {
        HStack {
            HStack (alignment: .top) {
                Image(systemName: comment.imageName)
                    .font(.largeTitle)
                VStack (alignment: .leading) {
                    HStack {
                        Text("\(comment.username)")
                        Text("\(comment.getDateByLongAgo())")
                    }
                    Text("\(comment.comment)")
                    if !comment.isPostDescription {
                        Button(action: {}, label: {
                            Text("Reply")
                                .foregroundStyle(Color.gray)
                        })
                        .buttonStyle(.plain)
                        .padding(.top, 1)
                    }
                }
            }
            
            Spacer()
            if !comment.isPostDescription {
                Button(action: {
                    comment.toggleLike()
                }, label: {
                    Image(systemName: comment.isLiked ? "heart.fill" : "heart")
                })
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview {
    CommentView()
}
