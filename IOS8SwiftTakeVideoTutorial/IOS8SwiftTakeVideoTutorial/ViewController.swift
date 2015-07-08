//
//  ViewController.swift
//  IOS8SwiftTakeVideoTutorial
//
//  Created by Arthur Knopper on 30/05/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import MobileCoreServices
import AssetsLibrary


class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var controller = UIImagePickerController()
    var assetsLibrary = ALAssetsLibrary()
    
    @IBAction func takeVideo(sender: AnyObject) {
        // 1 Check if project runs on a device with camera available
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            
            // 2 Present UIImagePickerController to take video
            //controller = UIImagePickerController()
            controller.sourceType = .Camera
            controller.mediaTypes = [kUTTypeMovie as! String]
            controller.delegate = self
            controller.videoMaximumDuration = 10.0
            
            presentViewController(controller, animated: true, completion: nil)
        }
        else {
            println("Camera is not available")
        }
    }
    
    @IBAction func viewLibrary(sender: AnyObject) {
            // Display Photo Library
            controller.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            controller.mediaTypes = [kUTTypeMovie as! String]
            controller.delegate = self
            
            presentViewController(controller, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject: AnyObject]) {
        
        // 1
        let mediaType:AnyObject? = info[UIImagePickerControllerMediaType]
        
        if let type:AnyObject = mediaType {
            if type is String {
                let stringType = type as! String
                    if stringType == kUTTypeMovie as! String {
                        let urlOfVideo = info[UIImagePickerControllerMediaURL] as? NSURL
                            if let url = urlOfVideo {
                                // 2
                                assetsLibrary.writeVideoAtPathToSavedPhotosAlbum(url,
                                    completionBlock: {(url: NSURL!, error: NSError!) in
                                        if let theError = error{
                                            println("Error saving video = \(theError)")
                                        }
                                        else {
                                            println("no errors happened")
                                        }
                                })
                        }
                }
                
            }
        }
        
        // 3
        picker.dismissViewControllerAnimated(true, completion: nil)
    }

    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

