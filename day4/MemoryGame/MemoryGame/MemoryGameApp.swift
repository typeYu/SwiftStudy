//
//  MemoryGameApp.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/07/13.
//

import SwiftUI

@main
struct MemoryGameApp: App {
    var body: some Scene {
        WindowGroup {
            CardView(state: .open, prefix: "f", num: 1)
        }
    }
}
