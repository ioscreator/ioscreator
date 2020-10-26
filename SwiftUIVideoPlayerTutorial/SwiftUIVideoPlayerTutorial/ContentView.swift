//
//  ContentView.swift
//  SwiftUIVideoPlayerTutorial
//
//  Created by Arthur Knopper on 21/10/2020.
//

import SwiftUI
import AVKit


struct ContentView: View {
    private let player = AVPlayer(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!)
    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                player.play()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
