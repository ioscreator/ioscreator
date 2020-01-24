//
//  ViewController.swift
//  IOSActionSheetTutorial
//
//  Created by Arthur Knopper on 24/01/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func displayActionSheet(_ sender: Any) {
        // 1
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
            
        // 2
        let deleteAction = UIAlertAction(title: "Delete", style: .default)
        let saveAction = UIAlertAction(title: "Save", style: .default)
            
        // 3
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            
        // 4
        optionMenu.addAction(deleteAction)
        optionMenu.addAction(saveAction)
        optionMenu.addAction(cancelAction)
            
        // 5
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

