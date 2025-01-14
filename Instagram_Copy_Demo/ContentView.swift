//
//  ContentView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2024-12-28.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewModel: PostViewModel = PostViewModel()
    
    var body: some View {
        VStack {
            VStack (spacing: 10) {
                HeaderView()
                PostImageView()
                InteractionsBarView(viewModel: $viewModel)
                PostDescriptionView(viewModel: $viewModel)
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
