//
//  HeaderView.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 12/29/24.
//
import SwiftUI

struct HeaderView: View {
    @StateObject var viewModel = PostImageViewModel()
    
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
            .sheet(isPresented: $viewModel.showOptionsSheet) {
                OptionsSheetView()
            }
        }
        .padding(.horizontal)
    }
}

struct OptionsSheetView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                OptionButton(title: "Save", systemImage: "bookmark")
                Divider()
                    .frame(height: 50)
                OptionButton(title: "QR Code", systemImage: "qrcode")
            }
            .frame(height: 70)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(12)
            .padding(.horizontal, 16)
            .padding(.top, 8)
            
            VStack(spacing: 0) {
                OptionRow(title: "About this account", systemImage: "person.circle")
                Divider()
                OptionRow(title: "Translations", systemImage: "captions.bubble")
                Divider()
                OptionRow(title: "Closed captions", systemImage: "rectangle.badge.checkmark")
                Divider()
                OptionRow(title: "Not interested", systemImage: "eye.slash")
            }
            .background(Color(UIColor.systemGray6))
            .cornerRadius(12)
            .padding(.horizontal, 16)
            .padding(.top, 8)
            
            Button(action: {
                // Report
            }) {
                HStack {
                    Spacer()
                    Image(systemName: "exclamationmark.triangle")
                        .foregroundColor(.red)
                    Text("Report")
                        .foregroundColor(.red)
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(12)
                .padding(.horizontal, 16)
                .padding(.top, 8)
            }
            
            Spacer()
        }
        .padding(.bottom, 20)
        .presentationDetents([.fraction(0.5)])
        .background(Color.black.opacity(0.05))
    }
}

struct OptionButton: View {
    let title: String
    let systemImage: String
    
    var body: some View {
        VStack {
            Image(systemName: systemImage)
                .font(.system(size: 24))
                .foregroundColor(.black)
            Text(title)
                .font(.caption)
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity)
    }
}

struct OptionRow: View {
    let title: String
    let systemImage: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: systemImage)
                .font(.system(size: 20))
                .foregroundColor(.black)
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.black)
            Spacer()
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
