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
            GameView(prefix: "f")
        }
    }
}
