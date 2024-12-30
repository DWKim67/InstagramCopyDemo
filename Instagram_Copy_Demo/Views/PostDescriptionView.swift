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
    @State var limitDescription: Bool = true
    
    var body: some View {
        HStack (alignment: .bottom) {
            Text("**\(username)** \(postDescription)")
                .lineLimit(limitDescription ? 1 : nil)
                .multilineTextAlignment(.leading)
            if limitDescription {
                Button(action: {
                    limitDescription.toggle()
                }, label: {
                    Text("more")
                })
            }
        }
        
    }
}

#Preview {
    PostDescriptionView()
}
