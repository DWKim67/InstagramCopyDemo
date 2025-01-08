//
//  CommentView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2025-01-07.
//

import SwiftUI

struct CommentView: View {
    
    var username: String = "JohnDoe123"
    var dateStr: String = "2w"
    var comment: String = "Wow, that looks cool!"
    var imageName: String = "person.crop.circle"
    @State var isLiked: Bool = false
    var isPostDescription: Bool = true
    
    var body: some View {
        HStack {
            HStack (alignment: .top) {
                Image(systemName: imageName)
                    .font(.largeTitle)
                VStack (alignment: .leading) {
                    HStack {
                        Text("\(username)")
                        Text("\(dateStr)")
                    }
                    Text("\(comment)")
                    if !isPostDescription {
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
            if !isPostDescription {
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                })
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview {
    CommentView()
}
