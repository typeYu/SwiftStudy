//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2022/07/11.
//

import SwiftUI

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
                        .font(.largeTitle)
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
                        .font(.largeTitle)
                        .aspectRatio(contentMode: .fit)
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
