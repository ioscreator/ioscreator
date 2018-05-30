//
//  ViewController.swift
//  IOS11VolumeViewTutorial
//
//  Created by Arthur Knopper on 28/05/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
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
        let path = Bundle.main.path(forResource: "Amorphis - My Enemy", ofType: "mp3")
        let music = NSURL(fileURLWithPath: path!) as URL
        
        // 2
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            try audioPlayer = AVAudioPlayer(contentsOf: music)
            
            audioPlayer.prepareToPlay()
        } catch {
            print("error")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

