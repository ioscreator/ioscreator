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
    var volumeViewSlider: UISlider!
    let wrapperView = UIView(frame: CGRect(x: 30, y: 200, width: 300, height: 20))

    @IBAction func playSound(_ sender: Any) {
        // 1
        audioPlayer.play()
        
        // 2
        view.backgroundColor = UIColor.clear
        view.addSubview(wrapperView)
        
        // 3
        if wrapperView.subviews.count == 0 {
            let volumeView = MPVolumeView(frame: wrapperView.bounds)
            wrapperView.addSubview(volumeView)
            
            // Find the volume view slider
            // Based on http://www.stormyprods.com/blogger/2008/09/proper-usage-of-mpvolumeview-class.html
            for view in volumeView.subviews {
                if view.description.contains("MPVolumeSlider") {
                    volumeViewSlider = view as? UISlider
                    break
                }
            }
            
            if volumeViewSlider != nil {
                // volumeViewSlider.backgroundColor = UIColor.red
                volumeViewSlider.tintColor = UIColor.orange
                
                // ???: All images from icon8.com
                //volumeViewSlider.setThumbImage(UIImage(named: "icons8-finger-up-100"), for: .highlighted)
                volumeViewSlider.setThumbImage(UIImage(named: "icons8-finger-up-filled-100"), for: .normal)
                
                volumeViewSlider.minimumValueImage = UIImage(named: "icons8-mute-100")
                volumeViewSlider.maximumValueImage = UIImage(named: "icons8-speaker-100")
                
                volumeViewSlider.setMinimumTrackImage(UIImage(named: "icons8-menu-100"), for: .normal)
                volumeViewSlider.setMaximumTrackImage(UIImage(named: "icons8-menu-filled-100"), for: .normal)
            }
        }
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

