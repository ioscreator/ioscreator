//
//  ViewController.swift
//  IOS10TwitterTutorial
//
//  Created by Arthur Knopper on 06/03/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var pickerController: UIImagePickerController = UIImagePickerController()
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func chooseImagePressed(_ sender: Any) {
        
        // 1
        pickerController.delegate = self
        pickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        // 2
        self.present(pickerController, animated: true, completion: nil)
    }
    

    @IBAction func tweetButtonPressed(_ sender: Any) {
        
        // 1
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            
            // 2
            let tweetSheet = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            
            // 3
            if let tweetSheet = tweetSheet {
                tweetSheet.setInitialText("Look at this nice picture!")
                tweetSheet.add(imageView.image)
                
                // 4
                self.present(tweetSheet, animated: true, completion: nil)
            }
        } else {
            
            // 5
            print("error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

