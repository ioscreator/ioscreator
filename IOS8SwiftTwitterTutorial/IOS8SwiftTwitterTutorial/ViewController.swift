//
//  ViewController.swift
//  IOS8SwiftTwitterTutorial
//
//  Created by Arthur Knopper on 17/09/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
  @IBOutlet weak var imageView: UIImageView!
  var pickerController:UIImagePickerController = UIImagePickerController()

  @IBAction func chooseImagePressed(sender: UIButton) {
    pickerController.delegate = self
    pickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
    self.presentViewController(pickerController, animated: true, completion: nil)
  }
  
  @IBAction func tweetButtonPressed(sender: UIButton) {
    // Do any additional setup after loading the view, typically from a nib.
    if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
      var tweetSheet = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
      tweetSheet.setInitialText("Look at this nice picture!")
      tweetSheet.addImage(imageView.image)
      
      self.presentViewController(tweetSheet, animated: true, completion: nil)
    } else {
      println("error")
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
      }

  
  func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
    imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    
    self.dismissViewControllerAnimated(true, completion: nil)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

