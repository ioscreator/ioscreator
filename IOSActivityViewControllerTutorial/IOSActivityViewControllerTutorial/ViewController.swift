//
//  ViewController.swift
//  IOSActivityViewControllerTutorial
//
//  Created by Arthur Knopper on 03/04/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareImage))
    }
    
    @objc func shareImage() {
        let vc = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: [])
        present(vc, animated: true)
    }


}

