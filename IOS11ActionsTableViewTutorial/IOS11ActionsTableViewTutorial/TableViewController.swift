//
//  TableViewController.swift
//  IOS11ActionsTableViewTutorial
//
//  Created by Arthur Knopper on 02/08/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let apps = ["Minecraft","Facebook","Tweetbot","Instagram"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    /*override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        print("test")
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }*/
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
    {
        // 1
        let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Share" , handler: { (action:UITableViewRowAction, indexPath: IndexPath) -> Void in
            // 2
            let shareMenu = UIAlertController(title: nil, message: "Share using", preferredStyle: .actionSheet)
            
            let twitterAction = UIAlertAction(title: "Twitter", style: UIAlertActionStyle.default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(cancelAction)
            
            
            self.present(shareMenu, animated: true, completion: nil)
        })
        // 3
        let rateAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Rate" , handler: { (action:UITableViewRowAction, indexPath:IndexPath) -> Void in
            // 4
            let rateMenu = UIAlertController(title: nil, message: "Rate this App", preferredStyle: .actionSheet)
            
            let appRateAction = UIAlertAction(title: "Rate", style: UIAlertActionStyle.default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            
            rateMenu.addAction(appRateAction)
            rateMenu.addAction(cancelAction)
            
            
            self.present(rateMenu, animated: true, completion: nil)
        })
        // 5
        return [shareAction,rateAction]
    }
    
    
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
