//
//  GameModel.swift
//  MemoryGame
//
//  Created by name on 2022/07/14.
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
    static let rows = 5
    static let cols = 4
    
    @Published var cards = [Card]()
    @Published var flips = 0
//    var cards: [Card] = []
    var openCardIndex: Int?
    private var count = 0
    var over: Bool {
        count == 0
    }
    
    func start() {
        cards = []
//        count = 0

        let max = GameModel.rows *  GameModel.cols / 2
        for i in 1...max {
            cards.append(Card(state: .closed, number: i))
            cards.append(Card(state: .closed, number: i))
//            count += 2
        }
        count = cards.count
        flips = 0
        
        cards.shuffle()
    }
    
    init() {
        start()
    }
    func card(row: Int, col: Int) -> Card {
        cards[row * GameModel.cols + col]
    }
    func open(row: Int, col: Int) {
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
                count -= 2
            } else {
                cards[oci].state = .closed
                cards[index].state = .open
                openCardIndex = index
                flips += 1
            }
        } else {
            cards[index].state = .open
            openCardIndex = index
            flips += 1
        }
    }
}
