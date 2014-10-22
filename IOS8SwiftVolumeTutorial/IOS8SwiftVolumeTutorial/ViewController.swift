//
//  ViewController.swift
//  IOS8SwiftVolumeTutorial
//
//  Created by Arthur Knopper on 22/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {
  var audioPlayer = AVAudioPlayer()

  @IBAction func playSound(sender: AnyObject) {
    // 1
    audioPlayer.play()
    
    // 2
    var wrapperView = UIView(frame: CGRectMake(30, 200, 260, 20))
    self.view.backgroundColor = UIColor.clearColor()
    self.view.addSubview(wrapperView)
    
    // 3
    var volumeView = MPVolumeView(frame: wrapperView.bounds)
    wrapperView.addSubview(volumeView)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 1
    let path = NSBundle.mainBundle().pathForResource("Amorphis - My Enemy", ofType: "mp3")
    var music = NSURL(fileURLWithPath: path!)
    
    // 2
    AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
    AVAudioSession.sharedInstance().setActive(true, error: nil)
    
    // 3
    var error:NSError?
    audioPlayer = AVAudioPlayer(contentsOfURL: music, error: &error)
    audioPlayer.prepareToPlay()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

