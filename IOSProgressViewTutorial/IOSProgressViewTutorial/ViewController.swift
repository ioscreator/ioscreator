//
//  ViewController.swift
//  IOSProgressViewTutorial
//
//  Created by Arthur Knopper on 20/03/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let progress = Progress(totalUnitCount: 10)
    
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func startCount(_ sender: Any) {
        progressView.progress = 0.0
        progress.completedUnitCount = 0
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            guard self.progress.isFinished == false else {
                timer.invalidate()
                return
            }
            
            self.progress.completedUnitCount += 1
            self.progressView.setProgress(Float(self.progress.fractionCompleted), animated: true)
            
            self.progressLabel.text = "\(Int(self.progress.fractionCompleted * 100)) %"
        }
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

