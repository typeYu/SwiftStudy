//
//  PoiDetailView.swift
//  MapSample
//
//  Created by name on 2022/07/15.
//

import SwiftUI
import MapKit

struct PoiDetailView: View {
    let poi: PoiItem
    var body: some View {
        GeometryReader { gr in
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Group {
                        PropertyView(imageName: "tram.circle", text: poi.SIGUN_NM)
                        PropertyView(imageName: "location.circle", text: poi.SIGUN_CD)
                        PropertyView(imageName: "fork.knife.circle", text: poi.REPRSNT_FOOD_NM)
                        PropertyView(imageName: "phone.circle", text: poi.TASTFDPLC_TELNO)
                    }
//                    Map(coordinateRegion: <#T##Binding<MKCoordinateRegion>#>)
                }
            }
        }
    }
}

struct PoiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Test Not Available")
//        PoiDetailView(
//            poi: PoiItem()
//        )
    }
}

struct PropertyView: View {
    let imageName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 30, height: 30)
            Text(text)
        }
    }
}
