//
//  ContentView.swift
//  Sample2
//
//  Created by Kiyong Kim on 2022/07/11.
//

import SwiftUI

struct BorderedShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .border(Color.green, width: 3)
            .shadow(color: Color.gray, radius: 5, x: 2, y: 5)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("Hello")
            } label: {
                Image(systemName: "poweroff")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
            }
            Spacer()
            ExtractedView()
                .modifier(BorderedShadow())
            Spacer()
            Image("cat_1")
            Spacer()
            Image(systemName: "folder.badge.plus")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.yellow)
                .padding()
                .border(Color.green, width: 8)
                .shadow(color: Color.gray, radius: 5, x: 0, y: 5)
            Image("cat_2")
                .modifier(BorderedShadow())
            
            Text("Hello, world!")
                .font(.footnote)
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

struct ExtractedView: View {
    var body: some View {
        HStack {
            Text("Hello, world!")
                .background(Color.orange)
                .padding(5)
            Text("K")
        }
    }
}
