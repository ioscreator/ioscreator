//
//  ViewController.swift
//  IOS8SwiftFileManagementTutorial
//
//  Created by Arthur Knopper on 03/03/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var fileManager = NSFileManager()
    var tmpDir = NSTemporaryDirectory()
    let fileName = "sample.txt"

    @IBAction func createFile(sender: AnyObject) {
        let path = tmpDir.stringByAppendingPathComponent(fileName)
        let contentsOfFile = "Sample Text"
        var error: NSError?
        
        // Write File
        if contentsOfFile.writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding, error: &error) == false {
            if let errorMessage = error {
                println("Failed to create file")
                println("\(errorMessage)")
            }
        } else {
            println("File sample.txt created at tmp directory")
        }
    }
    
    @IBAction func listDirectory(sender: AnyObject) {
        // List Content of Path
        let isFileInDir = enumerateDirectory() ?? "Empty"
        println("Contents of Directory =  \(isFileInDir)")
    }
    
    @IBAction func viewFileContent(sender: AnyObject) {
        let isFileInDir = enumerateDirectory() ?? ""
        
        let path = tmpDir.stringByAppendingPathComponent(isFileInDir)
        let contentsOfFile = NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil)
        
        if let content = contentsOfFile {
            println("Content of file = \(content)")
        } else {
            println("No file found")
        }
    }
    
    @IBAction func deleteFile(sender: AnyObject) {
        var error: NSError?
        
        if let isFileInDir = enumerateDirectory() {
            let path = tmpDir.stringByAppendingPathComponent(isFileInDir)
            fileManager.removeItemAtPath(path, error: &error)
        } else {
            println("No file found")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func enumerateDirectory() -> String? {
        var error: NSError?
        let filesInDirectory = fileManager.contentsOfDirectoryAtPath(tmpDir, error: &error) as? [String]
        
        if let files = filesInDirectory {
            if files.count > 0 {
                if files[0] == fileName {
                    println("sample.txt found")
                    return files[0]
                } else {
                    println("File not found")
                    return nil
                }
            }
        }
        return nil
     }
}

