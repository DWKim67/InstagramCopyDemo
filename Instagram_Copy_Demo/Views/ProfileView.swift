//
//  ProfileView.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 1/13/25.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel: PostViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Profile Header
            HStack(alignment: .center, spacing: 16) {
                // Profile Image
                ZStack {
                    Circle()
                        .stroke(LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .top, endPoint: .bottom), lineWidth: 3)
                        .frame(width: 80, height: 80)
                    Image("profilePlaceholder") // Replace with your image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 72, height: 72)
                        .clipShape(Circle())
                }
                
                // User Info
                VStack(alignment: .leading, spacing: 4) {
                    Text("Username")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Anonymous User")
                        .font(.subheadline)
                        .foregroundColor(.gray)
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
            }
            
            // Stats
            HStack {
                VStack {
                    Text("111")
                        .font(.headline)
                    Text("posts")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Text("222")
                        .font(.headline)
                    Text("followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Text("333")
                        .font(.headline)
                    Text("following")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .frame(maxWidth: .infinity)
            
            // Bio
            VStack(alignment: .leading, spacing: 8) {
                Text("UserName")
                    .font(.headline)
                Text("User Description")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Link("URL", destination: URL(string: "URL Destination")!)
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewModel: PostViewModel())
    }
}
