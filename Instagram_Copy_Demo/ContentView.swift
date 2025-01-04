//
//  ContentView.swift
//  Instagram_Copy_Demo
//
//  Created by Daniel Kim on 2024-12-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            PostImageView(images: [
                "https://i.imgur.com/DVSDh1m.png",
                "https://i.imgur.com/h3J906Q.png",
                "https://i.imgur.com/N5XmzyD.png"
            ])
            PostDescriptionView()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
