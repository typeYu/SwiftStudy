//
//  ContentView.swift
//  Sample2
//
//  Created by name on 2022/07/10.
//

import SwiftUI

struct BorderedShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .border(Color.green, width: 3)
            .shadow(color: Color.gray, radius:5, x:2 ,y:5)
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Hello, world!").background(Color.pink).padding(5)
                Text("K")
            }
            Button {
                print("Hello")
            } label: {
                Image(systemName: "poweroff")
                    .resizable()
                    .frame(width:48, height:48)
                    .foregroundColor(Color.black)
            }
            Image("Image 0")
            Image(systemName:"cursorarrow.click").resizable().frame(width:50, height:50).foregroundColor(Color.yellow).padding().border(Color.green, width:8).shadow(color: Color.gray, radius: 5, x:0, y:5)
            Image("Image 1")
            Text("Hello, world!").padding().background(Color.cyan).font(.footnote)
            
            }
        .padding().background(Color.mint)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
