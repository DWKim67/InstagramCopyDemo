//
//  HeaderView.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 12/29/24.
//
import SwiftUI

struct HeaderView: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack {
            HStack {
                // User Info
                HStack {
                    Circle()
                        .fill(Color.gray) // user image
                        .frame(width: 40, height: 40)

                    VStack(alignment: .leading) {
                        Text("samuel97316") // ID
                            .font(.headline)
                        Text("Wiz-97") // Nickname
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                Spacer()

                Button(action: {
                    viewModel.isFollowing.toggle()
                }) {
                    Text(viewModel.isFollowing ? "Following" : "Follow")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(viewModel.isFollowing ? .black : .white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(viewModel.isFollowing ? Color.gray.opacity(0.3) : Color.blue)
                        .cornerRadius(8)
                }

                Button(action: {
                    viewModel.showOptionsSheet = true
                }) {
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(90))
                        .foregroundColor(.black)
                        .padding(.leading, 8)
                }
            }
            .padding(.horizontal)
        }
        .sheet(isPresented: $viewModel.showOptionsSheet) {
            OptionsSheetView(viewModel: viewModel)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(viewModel: ViewModel())
    }
}

