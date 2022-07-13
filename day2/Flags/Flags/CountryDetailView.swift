//
//  CountryDetailView.swift
//  Flags
//
//  Created by Kiyong Kim on 2022/07/13.
//

import SwiftUI

struct CountryDetailView: View {
    var country: (name: String, file: String)
    var body: some View {
        Text("\(country.name)")
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: Nations.contintents[0].countries[0])
    }
}
