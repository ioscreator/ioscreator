//
//  ViewController.swift
//  iOS8SwiftTakePhotoTutorial
//
//  Created by Arthur Knopper on 21/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
  @IBOutlet var imageView: UIImageView!
  
  var imagePicker: UIImagePickerController!

  @IBAction func takePhoto(sender: UIButton) {
    imagePicker =  UIImagePickerController()
    imagePicker.delegate = self
    imagePicker.sourceType = .Camera
  
    presentViewController(imagePicker, animated: true, completion: nil)
  }
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
    imagePicker.dismissViewControllerAnimated(true, completion: nil)
    imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

