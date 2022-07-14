//
//  GameModel.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/07/14.
//

import Foundation

struct Card {
    enum State {
        case removed, closed, open
    }
    var state: State
    let number: Int
}

class GameModel {
    static let rows = 6
    static let cols = 3
    
    var cards = [Card]()
//    var cards: [Card] = []
    
    func start() {
        cards = []

        let max = GameModel.rows *  GameModel.cols / 2
        for i in 1...max {
            cards.append(Card(state: .open, number: i))
            cards.append(Card(state: .closed, number: i))
        }
    }
    
    init() {
        start()
    }
    func card(row: Int, col: Int) -> Card {
        cards[row * GameModel.cols + col]
    }
}
