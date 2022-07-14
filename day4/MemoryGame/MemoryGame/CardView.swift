//
//  CardView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/07/13.
//

import SwiftUI

struct CardView: View {
    enum CardState {
        case removed, closed, open
    }
    var state: CardState
    var prefix: String
    var num: Int
    var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var frameIndex = 1
    var body: some View {
        if state == .removed {
            Image(systemName: "x.circle")
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .opacity(0.1)
        } else {
            Image(imageName)
                .onReceive(timer) { _ in
//                    NSLog("on timer receivw")
                    frameIndex += 1
                    if frameIndex > 8 {
                        frameIndex = 1
                    }
                }
        }
    }
    var imageName: String {
        if state == .closed {
            return prefix + "_back"
        }
        return prefix + String(format: "_%02d_%02d", num, frameIndex)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                CardView(state:.open, prefix: "f", num: 1)
                CardView(state:.closed, prefix: "f", num: 1)
            }
            HStack {
                CardView(state:.open, prefix: "f", num: 2)
                CardView(state:.closed, prefix: "f", num: 2)
            }
            HStack {
                CardView(state:.open, prefix: "t", num: 3)
                CardView(state:.closed, prefix: "t", num: 3)
            }
            HStack {
                CardView(state:.removed, prefix: "f", num: 3)
                CardView(state:.removed, prefix: "t", num: 3)
            }
        }
    }
}
