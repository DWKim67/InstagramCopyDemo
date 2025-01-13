//
//  ContentView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2024-12-28.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 10) {
                    HeaderView(viewModel: viewModel) // Pass ViewModel to HeaderView
                    PostImageView()
                    InteractionsBarView()
                    PostDescriptionView()
                }
                .padding()
                Spacer()
            }
            .navigationDestination(isPresented: $viewModel.navigateToProfile) {
                ProfileView(viewModel: viewModel) // Navigate to ProfileView
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
