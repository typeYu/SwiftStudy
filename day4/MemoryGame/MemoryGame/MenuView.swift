//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/07/14.
//

import SwiftUI

struct MenuView: View {
    let prefixes = [ "f", "t" ]
    var body: some View {
        NavigationView {
            List {
                ForEach(prefixes, id:\.self) { prefix in
                    NavigationLink(destination: GameView(prefix: prefix)) {
                        MenuItemView(prefix: prefix)
                    }
                }
            }
            .navigationTitle(
                Text("Memory Game")
            )
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuItemView: View {
    let prefix: String
    var body: some View {
        Text("Game with prefix \(prefix)")
            .background(
                Image("\(prefix)_back")
            )
            .frame(width:.infinity, height: 200)
    }
}
