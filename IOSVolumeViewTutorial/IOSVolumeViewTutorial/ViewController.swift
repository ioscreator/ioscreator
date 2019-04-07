//
//  ViewController.swift
//  IOSVolumeViewTutorial
//
//  Created by Arthur Knopper on 03/04/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
    let wrapperView = UIView(frame: CGRect(x: 30, y: 200, width: 300, height: 20))
    
    @IBAction func playSound(_ sender: Any) {
        // 1
        audioPlayer.play()
        
        // 2
        view.backgroundColor = UIColor.clear
        view.addSubview(wrapperView)
        
        // 3
        let volumeView = MPVolumeView(frame: wrapperView.bounds)
        wrapperView.addSubview(volumeView)
    }
    
    @IBAction func stopSound(_ sender: Any) {
        audioPlayer.stop()
        wrapperView.removeFromSuperview()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        if let asset = NSDataAsset(name: "amorphis-my-enemy") {
        
            // 2
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback)
                try AVAudioSession.sharedInstance().setActive(true)
                try audioPlayer = AVAudioPlayer(data:asset.data, fileTypeHint:"mp3")
                audioPlayer.prepareToPlay()
            } catch {
                print("error")
            }
        }
    }


}

