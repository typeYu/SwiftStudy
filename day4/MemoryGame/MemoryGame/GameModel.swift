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

class GameModel: ObservableObject {
    static let rows = 6
    static let cols = 3
    
    @Published var cards = [Card]()
//    var cards: [Card] = []
    var openCardIndex: Int?
    
    func start() {
        cards = []

        let max = GameModel.rows *  GameModel.cols / 2
        for i in 1...max {
            cards.append(Card(state: .closed, number: i))
            cards.append(Card(state: .closed, number: i))
        }
    }
    
    init() {
        start()
    }
    func card(row: Int, col: Int) -> Card {
        cards[row * GameModel.cols + col]
    }
    func toggle(row: Int, col: Int) {
        let index = row * GameModel.cols + col
        if index == openCardIndex {
            return
        }
        if let oci = openCardIndex {
            let num = cards[oci].number
            if num == cards[index].number {
                cards[index].state = .removed
                cards[oci].state = .removed
                openCardIndex = nil
            } else {
                cards[oci].state = .closed
                cards[index].state = .open
                openCardIndex = index
            }
        } else {
            cards[index].state = .open
            openCardIndex = index
        }
    }
}
