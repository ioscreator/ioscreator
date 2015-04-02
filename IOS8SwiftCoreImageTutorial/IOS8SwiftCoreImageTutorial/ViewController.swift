//
//  ViewController.swift
//  IOS8SwiftCoreImageTutorial
//
//  Created by Arthur Knopper on 01/04/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "dog.jpg")
        let originalImage = CIImage(image: image)
        
        var filter = CIFilter(name: "CIPhotoEffectMono")
        filter.setDefaults()
        filter.setValue(originalImage, forKey: kCIInputImageKey)
        
        var outputImage = filter.outputImage
        var newImage = UIImage(CIImage: outputImage)
        imageView.image = newImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

