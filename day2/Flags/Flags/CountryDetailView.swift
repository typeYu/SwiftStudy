//
//  CountryDetailView.swift
//  flags
//
//  Created by name on 2022/07/12.
//

import SwiftUI

struct CountryDetailView: View {
    var country: (name: String, file: String)
    var body: some View {
        List {
            Text("\(country.name)")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(Font.title)
            Image("\(country.file)")
                .resizable()
                .frame(width: 100, height: 100)
                .frame(maxWidth: .infinity, alignment: .center)
            HStack {
                Text("Population")
                Text("\(country.name.count) million people")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }.font(Font.headline)
            HStack {
                Text("Per Capita Income")
                Text("$\(country.file.count * 13)")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            ForEach(0 ..< country.name.count) { index in
                let si = country.name.startIndex
                let ei = country.name.index(si, offsetBy: index + 1)
                let subs = String(country.name[si ..< ei])
                Text("Item \(index+1) : \(subs)")
            }
        }
        .navigationTitle(country.name)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: Nations.contintents[0].countries[0])
    }
}

