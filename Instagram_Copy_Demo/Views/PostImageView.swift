//
//  PostImageView.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 1/3/25.
//

import SwiftUI

struct PostImageView: View {
    @StateObject private var viewModel: PostViewModel
    
    init(viewModel: PostViewModel = PostViewModel()) {
            _viewModel = StateObject(wrappedValue: viewModel)
        }
    
    var body: some View {
        ZStack {
            TabView {
                ForEach(viewModel.post.images, id: \.self) { imageURL in
                    AsyncImage(url: URL(string: imageURL)) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity, maxHeight: 400)
                                .clipped()
                                .onTapGesture(count: 2) {
                                    viewModel.handleDoubleTap()
                                }
                        } else if phase.error != nil {
                            Color.red
                                .frame(maxWidth: .infinity, maxHeight: 400)
                                .overlay(
                                    Text("Failed to load image")
                                        .foregroundColor(.white)
                                        .font(.caption)
                                )
                        } else {
                            ProgressView()
                                .frame(maxWidth: .infinity, maxHeight: 400)
                        }
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .frame(height: 400)
            
            if viewModel.showHeart {
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.red)
                    .opacity(viewModel.showHeart ? 1 : 0)
                    .scaleEffect(viewModel.showHeart ? 1 : 0.5)
            }
        }
        .gesture(DragGesture())
    }
}

struct PostImageView_Previews: PreviewProvider {
    static var previews: some View {
        PostImageView()
            .previewLayout(.sizeThatFits)
    }
}
