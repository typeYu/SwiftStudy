//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2022/07/11.
//

import SwiftUI

//struct TopButtonModifier: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .frame(width: 60, height: 60)
//            .aspectRatio(contentMode: .fit)
//            .foregroundColor(Color.orange)
//    }
//}

struct TopButton: View {
    var enabled: Bool
    var imageName: String
    var action: ()->Void
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(
                    enabled ? Color.orange : Color.gray
                )
        }
        .disabled(!enabled)
    }
}

struct ContentView: View {
    @State var pageNumber = 1
    var body: some View {
        VStack {
            HStack {
                TopButton(enabled: pageNumber > 1 ,imageName: "arrowtriangle.left") {
                    pageNumber -= 1
                }
                Spacer()
                Text("\(pageNumber) / 5")
                    .font(.largeTitle)
                Spacer()
                TopButton(enabled: pageNumber < 5, imageName: "arrowtriangle.right") {
                    pageNumber += 1
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


