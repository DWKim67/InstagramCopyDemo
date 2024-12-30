//
//  HeaderView.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 12/29/24.
//
import SwiftUI

struct HeaderView: View {
    @State private var isFollowing = false
    
    var body: some View {
        HStack {
            // User Info
            HStack {
                //User Icon
                Circle()
                    .fill(Color.gray)   // put in user-selected images
                    .frame(width:40, height: 40)
                
                VStack(alignment: .leading) {
                    Text("samuel97316")    // ID
                        .font(.headline)
                    Text("Wiz-97") //  Nickname
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            
            Button(action: {
                isFollowing.toggle()
            }) {
                Text(isFollowing ? "Following" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(isFollowing ? .black : .white)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(isFollowing ? Color.gray.opacity(0.3) : Color.blue)
                    .cornerRadius(8)
            }
            
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(90))
                .foregroundColor(.black)
                .padding(.leading, 8)
        }
        .padding(.horizontal)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
