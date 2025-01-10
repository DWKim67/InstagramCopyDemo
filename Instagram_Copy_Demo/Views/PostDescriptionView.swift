//
//  PostDescriptionView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2024-12-28.
//

import SwiftUI


struct PostDescriptionView: View {
    
    var username: String = "samuel97316"
    var postDescription: String = "This is the post description to demo the action of testing expandable text. \n\n#postDescription #testForDemo"
    var date: Date = Date()
    @State var shouldPresentComments: Bool = false
    @State var comments: [Comment]
    
    @State var limitDescription: Bool = true
    
    var body: some View {
        VStack {
            Button(action: {
                if limitDescription {
                    limitDescription.toggle()
                } else {
                    comments.append(Comment.createPostDescriptionComment(username: username, datePosted: date, comment: postDescription))
                    shouldPresentComments = true
                }
            }, label: {
                VStack (alignment: .leading) {
                    HStack (alignment: .bottom) {
                        Text("**\(username)** \(postDescription)")
                            .lineLimit(limitDescription ? 1 : nil)
                            .multilineTextAlignment(.leading)
                        if limitDescription {
                            Text("more")
                                .foregroundStyle(Color.gray)
                        }
                    }
                    Text("\(DateFormatter.instagramPostStyle.string(from: date))")
                        .foregroundStyle(Color.gray)
                }
                
            })
            .buttonStyle(.plain)
        }
        .sheet(isPresented: $shouldPresentComments, content: {
            CommentsSectionView(comments: comments)
                .presentationDetents([.large, .medium, .fraction(0.75)])
        })
    }
}

#Preview {
    PostDescriptionView(comments: [Comment(), Comment()])
}
