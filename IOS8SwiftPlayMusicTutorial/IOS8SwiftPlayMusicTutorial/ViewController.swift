//
//  ViewController.swift
//  IOS8SwiftPlayMusicTutorial
//
//  Created by Arthur Knopper on 31/05/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet var trackTitle: UILabel!
    @IBOutlet var playedTime: UILabel!
    
    var audioPlayer = AVAudioPlayer()
    var isPlaying = false
    var timer:NSTimer!

    @IBAction func playOrPauseMusic(sender: AnyObject) {
        if isPlaying {
            audioPlayer.pause()
            isPlaying = false
        } else {
            audioPlayer.play()
            isPlaying = true
            
            timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTime", userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func stopMusic(sender: AnyObject) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        isPlaying = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trackTitle.text = "Future Islands - Tin Man"
        var path = NSBundle.mainBundle().URLForResource("Future Islands - Tin Man", withExtension: "mp3")
        var error:NSError?
        
        audioPlayer = AVAudioPlayer(contentsOfURL: path!, error: &error)
    }
    
    func updateTime() {
        var currentTime = Int(audioPlayer.currentTime)
        var minutes = currentTime/60
        var seconds = currentTime - minutes * 60
        
        playedTime.text = NSString(format: "%02d:%02d", minutes,seconds) as String
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

