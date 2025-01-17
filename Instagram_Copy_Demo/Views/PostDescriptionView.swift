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
    @ObservedObject var viewModel: PostViewModel
    
    @State var limitDescription: Bool = true
    
    var body: some View {
        VStack {
            Button(action: {
                if limitDescription {
                    limitDescription.toggle()
                } else {
                    let postComment = Comment.createPostDescriptionComment(username: username, datePosted: date, comment: postDescription)
                    viewModel.setDescriptionComment(as: postComment)
                    viewModel.showDescriptionComment()
                    shouldPresentComments = true
                }
            }, label: {
                VStack (alignment: .leading) {
                    HStack (alignment: .bottom) {
                        Text("**\(username)** \(postDescription)")
                            .lineLimit(limitDescription ? 1 : nil)
                            .multilineTextAlignment(.leading)
                        Text("more")
                            .foregroundStyle(limitDescription ? Color.gray : Color.clear)
                    }
                    Text("\(DateFormatter.instagramPostStyle.string(from: date))")
                        .foregroundStyle(Color.gray)
                }
                
            })
            .buttonStyle(.plain)
        }
        .sheet(isPresented: $shouldPresentComments, content: {
            CommentsSectionView(comments: viewModel.getComments())
                .presentationDetents([.large, .medium, .fraction(0.75)])
        })
    }
}

#Preview {
    PostDescriptionView(viewModel: PostViewModel())
}
