//
//  ViewController.swift
//  IOS12CoreImageTutorial
//
//  Created by Arthur Knopper on 01/10/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        if let image = UIImage(named: "dog.jpg") {
            let originalImage = CIImage(image: image)
            
            // 2
            let filter = CIFilter(name: "CIPhotoEffectMono")
            filter?.setDefaults()
            filter?.setValue(originalImage, forKey: kCIInputImageKey)
            
            // 3
            if let outputImage = filter?.outputImage {
            let newImage = UIImage(ciImage: outputImage)
            imageView.image = newImage
            }
        } 
    }
}

