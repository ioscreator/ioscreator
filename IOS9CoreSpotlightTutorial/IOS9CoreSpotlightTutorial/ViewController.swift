//
//  ViewController.swift
//  IOS9CoreSpotlightTutorial
//
//  Created by Arthur Knopper on 21/09/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import CoreSpotlight
import MobileCoreServices

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    let identifier = "MyIdentifier"

    @IBAction func AddItemToCoreSpotlight(sender: AnyObject) {
        let attributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeText as String)
        attributeSet.title = textField.text
        attributeSet.contentDescription = "CoreSpotLight tutorial"
        
        let item = CSSearchableItem(uniqueIdentifier: identifier, domainIdentifier: "com.ioscreator", attributeSet: attributeSet)
        CSSearchableIndex.defaultSearchableIndex().indexSearchableItems([item]) { (error: NSError?) -> Void in
            if let error =  error {
                print("Indexing error: \(error.localizedDescription)")
            } else {
                print("Search item successfully indexed")
            }
        }
    }
    
    @IBAction func RemoveItemFromCoreSpotlight(sender: AnyObject) {
        CSSearchableIndex.defaultSearchableIndex().deleteSearchableItemsWithIdentifiers([identifier])
            { (error: NSError?) -> Void in
                if let error = error {
                    print("Remove error: \(error.localizedDescription)")
                } else {
                    print("Search item successfully removed")
                }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }


}

