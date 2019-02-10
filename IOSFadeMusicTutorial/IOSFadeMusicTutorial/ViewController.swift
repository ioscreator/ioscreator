//
//  ViewController.swift
//  IOSFadeMusicTutorial
//
//  Created by Arthur Knopper on 07/02/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
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
            
            // Fading out
            player.setVolume(0, fadeDuration: 2)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let asset = NSDataAsset(name: "com-truise-cyanide-sisters") else { print("Error Loading Audio."); return }
        
        do {
            player = try AVAudioPlayer(data: asset.data)
        } catch { print("Error Playing Audio."); return }
        
        player.volume = 0
        player.numberOfLoops = -1
        player.play()
    }


}

