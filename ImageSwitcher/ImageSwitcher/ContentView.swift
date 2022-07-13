//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2022/07/11.
//

import SwiftUI

struct TopButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 60, height: 60)
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.orange)
    }
}


struct ContentView: View {
    @State var pageNumber = 1
    var body: some View {
        VStack {
            HStack {
                Button {
                    if pageNumber > 1 {
                        pageNumber -= 1
                    }
                } label: {
                    Image(systemName: "arrowtriangle.left")
                        .resizable()
                        .modifier(TopButtonModifier())
                }
                Spacer()
                Text("\(pageNumber) / 5")
                Spacer()
                Button {
                    if pageNumber < 5 {
                        pageNumber += 1
                    }
                } label: {
                    Image(systemName: "arrowtriangle.right")
                        .resizable()
                        .modifier(TopButtonModifier())
                }
            }
            Image("cat_1")
                .resizable()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
