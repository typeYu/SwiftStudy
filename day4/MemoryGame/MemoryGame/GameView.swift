//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/07/13.
//

import SwiftUI

struct GameView: View {
    var game = GameModel()
    var body: some View {
        GridStack(rows: 6, columns: 3) { row, column in
            CardView(prefix: "f", card: game.card(row: row, col: column))
                .gesture(
                    TapGesture().onEnded {
                        
                    }
                )
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
