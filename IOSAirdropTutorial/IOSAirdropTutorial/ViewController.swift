//
//  ViewController.swift
//  IOSAirdropTutorial
//
//  Created by Arthur Knopper on 31/10/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func shareImage(_ sender: Any) {
        let image = imageView.image!
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        controller.excludedActivityTypes = [.postToFacebook, .postToTwitter, .print, .copyToPasteboard,
                                            .assignToContact, .saveToCameraRoll, .mail]
        
        self.present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named:"imac.jpg")
        imageView.image = image
    }


}

