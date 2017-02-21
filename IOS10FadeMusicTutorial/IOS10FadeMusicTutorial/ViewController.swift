//
//  ViewController.swift
//  IOS10FadeMusicTutorial
//
//  Created by Arthur Knopper on 14/02/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    @IBAction func fadeSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            
            // Fading in
            player.setVolume(1, fadeDuration: 2)
        } else {
            
            // Fadin out
            player.setVolume(0, fadeDuration: 2)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let asset = NSDataAsset(name: "thestonefoxes-everybodyknows") else { print("Error Loading Audio."); return }
        
        
        do {
            player = try AVAudioPlayer(data: asset.data)
        } catch { print("Error Playing Audio."); return }
        
        
        player.volume = 0
        player.numberOfLoops = -1
        player.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

