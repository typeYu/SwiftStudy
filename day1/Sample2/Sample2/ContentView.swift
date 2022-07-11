//
//  ContentView.swift
//  Sample2
//
//  Created by Kiyong Kim on 2022/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .background(Color.orange)
                .padding()
            
            Text("Hello, world!")
                .padding()
                .background(Color.yellow)
        }
        .padding()
        .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
