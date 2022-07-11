//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2022/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    //
                } label: {
                    Image(systemName: "arrowtriangle.left")
                        .font(.largeTitle)
                }
                Spacer()
                Text("1 / 5")
                Spacer()
                Button {
                    //
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
