//
//  ContentView.swift
//  AlbumsSample
//
//  Created by Kiyong Kim on 2022/07/14.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var albumStore = AlbumStore.singleton
    var body: some View {
        NavigationView {
            List {
                ForEach(albumStore.albums, id:\.albumTitle) { album in
                    NavigationLink(destination: Text("\(album.albumTitle)")) {
                        AlbumItemView(album: album)
                    }
                }
            }
            .navigationTitle(Text("Albums"))
        }
        .onAppear {
            albumStore.load()
        }
//        Text("Hello, world!")
//            .padding()
//            .onAppear {
//                AlbumStore.singleton.load()
//            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AlbumItemView: View {
    static let imageSize = 60
    let album: Album
    var body: some View {
        HStack {
            Image(systemName: "music.note.list")
//                .font(.largeTitle)
                .resizable()
                .frame(width: CGFloat(AlbumItemView.imageSize),
                       height: CGFloat(AlbumItemView.imageSize))
            VStack(alignment: .leading) {
                Text("\(album.albumTitle)")
                    .font(.headline)
                Spacer()
                Text("\(album.artistName)")
                    .font(.footnote)
                    .foregroundColor(.green)
            }
        }
    }
}

struct AlbumItemView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            AlbumItemView(album: Album(
                albumTitle: "Title", artistName: "Artist", image: "???"
            ))
        }
    }
}
