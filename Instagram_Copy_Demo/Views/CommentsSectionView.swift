//
//  CommentsSectionView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2024-12-30.
//

import SwiftUI

struct CommentsSectionView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack (spacing: 25) {
                    CommentView()
                    CommentView()
                    CommentView()
                    CommentView()
                    CommentView()
                    CommentView()
                    CommentView()
                    CommentView()
                    CommentView()
                }
                Spacer()
            }
        }
        .padding(.top)
        
        
    }
}

#Preview {
    CommentsSectionView()
}
