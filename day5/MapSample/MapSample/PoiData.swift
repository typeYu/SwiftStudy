//
//  PoiData.swift
//  MapSample
//
//  Created by Kiyong Kim on 2022/07/15.
//

import Foundation

class PoiItem: Codable {
    let SIGUN_NM: String
    let SIGUN_CD: String
    let RESTRT_NM: String
    let REPRSNT_FOOD_NM: String
    let TASTFDPLC_TELNO: String
    let REFINE_LOTNO_ADDR: String
    let REFINE_ROADNM_ADDR: String
    let REFINE_ZIP_CD: String
    let REFINE_WGS84_LOGT: String
    let REFINE_WGS84_LAT: String
}

class PoiData: ObservableObject {
    @Published var rows = [PoiItem]()
    struct Const {
        static let baseUrl = "https://openapi.gg.go.kr/PlaceThatDoATasteyFoodSt"
        static let key = "e92ec3e6a9f44981974d4746d28f8995"
    }
    func load() {
        let strUrl = "\(Const.baseUrl)?Type=json&Key=\(Const.key)"
        guard let url = URL(string: strUrl) else {
            print("Failed to build url with \(strUrl)")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else {
                print("No data from dataTask with url: \(strUrl)")
                return
            }
            guard let pois = self.parse(data: data) else {
                print("Parse failed")
                return
            }
            OperationQueue.main.addOperation {
                self.rows = pois
            }
        }
        task.resume()
    }
    func parse(data: Data) -> [PoiItem]? {
        
    }
}
