//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/07/14.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: GameView(prefix: "f")) {
                    Text("Game with prefix F")
                }
                NavigationLink(destination: GameView(prefix: "t")) {
                    Text("Game with prefix T")
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
