//
//  ViewController.swift
//  IOSPlayMusicAVAudioPlayerTutorial
//
//  Created by Arthur Knopper on 27/11/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
    var isPlaying = false
    var timer:Timer!
    
    @IBOutlet weak var trackTitle: UILabel!
    @IBOutlet weak var playedTime: UILabel!
    
    @IBAction func playOrPauseMusic(_ sender: Any) {
        if isPlaying {
            audioPlayer.pause()
            isPlaying = false
        } else {
            audioPlayer.play()
            isPlaying = true
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func stopMusic(_ sender: Any) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        isPlaying = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trackTitle.text = "Future Islands - Tin Man"
        let path = Bundle.main.path(forResource: "Future Islands - Tin Man", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer =  try AVAudioPlayer(contentsOf: url)
        } catch {
            // can't load file
        }
    }
    
    @objc func updateTime() {
        let currentTime = Int(audioPlayer.currentTime)
        let minutes = currentTime/60
        let seconds = currentTime - minutes * 60
        
        playedTime.text = String(format: "%02d:%02d", minutes,seconds) as String
    }

}


