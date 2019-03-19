//
//  DetailViewController.swift
//  IOSPassDataViewControllerTutorial
//
//  Created by Arthur Knopper on 11/03/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedNumber: String!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLabel.text = selectedNumber
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
