//
//  TableViewController.swift
//  IOSActionsTableViewTutorial
//
//  Created by Arthur Knopper on 25/02/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let apps = ["Minecraft","Facebook","Tweetbot","Instagram"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // 1
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 2
        return apps.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 3
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = apps[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
    {
        // 1
        let shareAction = UITableViewRowAction(style: .default, title: "Share" , handler: { (action:UITableViewRowAction, indexPath: IndexPath) -> Void in
            // 2
            let shareMenu = UIAlertController(title: nil, message: "Share using", preferredStyle: .actionSheet)
            
            let twitterAction = UIAlertAction(title: "Twitter", style: .default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(cancelAction)
            
            self.present(shareMenu, animated: true, completion: nil)
        })
        // 3
        let rateAction = UITableViewRowAction(style: .default, title: "Rate" , handler: { (action:UITableViewRowAction, indexPath:IndexPath) -> Void in
            // 4
            let rateMenu = UIAlertController(title: nil, message: "Rate this App", preferredStyle: .actionSheet)
            
            let appRateAction = UIAlertAction(title: "Rate", style: .default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            rateMenu.addAction(appRateAction)
            rateMenu.addAction(cancelAction)
            
            self.present(rateMenu, animated: true, completion: nil)
        })
        // 5
        return [shareAction,rateAction]
    }

}
