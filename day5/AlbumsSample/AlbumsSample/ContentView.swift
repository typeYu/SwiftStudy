//
//  ContentView.swift
//  AlbumsSample
//
//  Created by Kiyong Kim on 2022/07/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                AlbumStore.singleton.load()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
