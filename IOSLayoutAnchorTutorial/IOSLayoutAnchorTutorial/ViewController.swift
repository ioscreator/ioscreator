//
//  ViewController.swift
//  IOSLayoutAnchorTutorial
//
//  Created by Arthur Knopper on 22/11/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   override func viewDidLoad() {
    super.viewDidLoad()
    
    let firstButton = UIButton(type: .roundedRect)
    firstButton.setTitle("First", for: .normal)
    firstButton.sizeToFit()
    firstButton.backgroundColor = .green
    firstButton.tintColor = .black
    firstButton.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(firstButton)
    
    firstButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    firstButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
    
    let secondButton = UIButton(type: .roundedRect)
    secondButton.setTitle("Second", for: .normal)
    secondButton.sizeToFit()
    secondButton.backgroundColor = .yellow
    secondButton.tintColor = .black
    secondButton.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(secondButton)
    
    secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    secondButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
    }
}

