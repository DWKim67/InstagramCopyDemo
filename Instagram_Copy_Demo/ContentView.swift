//
//  ContentView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2024-12-28.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: PostViewModel = PostViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 10) {
                    HeaderView(viewModel: viewModel)
                    PostImageView()
                    InteractionsBarView(viewModel: $viewModel)
                    PostDescriptionView(viewModel: $viewModel)
                }
                .padding()
                Spacer()
            }
            .navigationDestination(isPresented: $viewModel.navigateToProfile) {
                ProfileView(viewModel: viewModel) // Navigate to ProfileView
            }
        }
    }
}

#Preview {
    ContentView()
}
