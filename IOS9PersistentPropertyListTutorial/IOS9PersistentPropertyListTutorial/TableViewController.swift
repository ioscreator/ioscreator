//
//  TableViewController.swift
//  IOS9PersistentPropertyListTutorial
//
//  Created by Arthur Knopper on 02/05/16.
//  Copyright © 2016 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var items = ["Item 1", "Item 2", "Item 3"]
    
    @IBAction func addItem() {
        // 1
        let newRowIndex = items.count
        let item = ("Item \(newRowIndex + 1)")
        items.append(item)
        
        // 2
        let indexPath = NSIndexPath(forRow: newRowIndex, inSection: 0)
        let indexPaths = [indexPath]
        tableView.insertRowsAtIndexPaths(indexPaths, withRowAnimation: .Automatic)
        
        saveData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        loadData()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func saveData() {
        let data = NSMutableData()
        
        // 1
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let path = paths[0]
        let file = (path as NSString).stringByAppendingPathComponent("Persistent.plist")
        
        //2
        let archiver = NSKeyedArchiver(forWritingWithMutableData: data)
        archiver.encodeObject(items, forKey: "items")
        archiver.finishEncoding()
        data.writeToFile(file, atomically: true)
    }
    
    func loadData() {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let path = paths[0]
        let file = (path as NSString).stringByAppendingPathComponent("Persistent.plist")
        
        // 1
        if NSFileManager.defaultManager().fileExistsAtPath(file) {
            if let data = NSData(contentsOfFile: file) {
                let unarchiver = NSKeyedUnarchiver(forReadingWithData: data)
                items = unarchiver.decodeObjectForKey("items") as! [String]
                
                unarchiver.finishDecoding()
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = items[indexPath.row]

        return cell
    }
}
