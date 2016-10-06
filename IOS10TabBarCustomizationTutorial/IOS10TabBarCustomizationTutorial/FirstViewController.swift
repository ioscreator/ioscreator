//
//  FirstViewController.swift
//  IOS10TabBarCustomizationTutorial
//
//  Created by Arthur Knopper on 06/10/2016.
//  Copyright © 2016 Arthur Knopper. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let tabBar = self.tabBarController?.tabBar else { return }
        
        tabBar.tintColor = UIColor.white
        tabBar.barTintColor = UIColor.black
        tabBar.unselectedItemTintColor = UIColor.yellow
        
        
        guard let tabBarItem = self.tabBarItem else { return }
        
        tabBarItem.badgeValue = "123"
        tabBarItem.badgeColor = UIColor.blue
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

