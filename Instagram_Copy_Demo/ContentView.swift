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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            PostDescriptionView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
