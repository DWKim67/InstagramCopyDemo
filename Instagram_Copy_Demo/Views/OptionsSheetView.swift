//
//  OptionsSheetView.swift
//  Instagram_Copy_Demo
//
//  Created by Samuel Lee on 1/13/25.
//

import SwiftUI

struct OptionsSheetView: View {
    @ObservedObject var viewModel: PostViewModel

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
                Button(action: {
                    viewModel.showOptionsSheet = false // Dismiss modal
                    viewModel.navigateToProfile = true // navigate to ProfileVIew
                }) {
                    OptionRow(title: "About this account", systemImage: "person.circle")
                }
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
                // Report action
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

struct OptionsSheetView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsSheetView(viewModel: PostViewModel())
    }
}
