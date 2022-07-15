//
//  ImageStore.swift
//  AlbumsSample
//
//  Created by name on 2022/07/15.
//

import Foundation
import SwiftUI

class ImageStore {
    static var cache = [String: Image]()
    
    static func load(strUrl: String, onDownload: @escaping (Image)->Void) -> Image {
        if let image = cache[strUrl] {
            NSLog("downloaded image exists: \(strUrl)")
            return image
        }
        guard let url = URL(string: strUrl) else {
            print("Invalid URL: \(strUrl)")
            return Image(systemName: "music.note.list")
        }
        NSLog("download start: \(strUrl)")
        URLSession.shared.dataTask(with: url) { data, resp, error in
            NSLog("download mid: \(strUrl)")
            var image: Image?
            if let data = data {
                if let uiImage = UIImage(data: data) {
//                    onDownload(Image(uiImage: uiImage))
                    image = Image(uiImage: uiImage)
                }
            }
            OperationQueue.main.addOperation {
                NSLog("download end: \(strUrl)")
                if image != nil {
                    cache[strUrl] = image!
                }
                onDownload(image ?? Image(systemName: "music.note.list"))
            }
        }.resume()
        
        return Image(systemName: "music.note.list")
    }
}


