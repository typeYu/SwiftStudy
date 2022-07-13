//
//  ContentView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2022/07/13.
//

//Press, Move, Release
//LongPress
//Tap(Click) = Touch Up Inside
//Double Tap, Triple, ...
//Drag, Pan -> Translation
//Flick (Fling) - Decelerating
//Swipe -> Direction
//Pinch -> Scale
//Rotation -> Angle


import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text("count = \(count)")
            Text("Tap Me !!")
                .padding(50)
                .background(Color.yellow)
                .gesture(
                    TapGesture()
                        .onEnded {
                            count += 1
                        }
                )
            HStack {
                Image(systemName: "pencil.and.outline")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Long Press Me")
            }
            .padding(50)
            .background(Color.orange)
            .gesture(
                LongPressGesture()
                    .onEnded { _ in
                        count += 10
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
