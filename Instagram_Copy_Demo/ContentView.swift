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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            PostDescriptionView()
            HeaderView()
            PostImageView(images: [
                "https://i.imgur.com/DVSDh1m.png",
                "https://i.imgur.com/h3J906Q.png",
                "https://i.imgur.com/N5XmzyD.png"
            ])
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
