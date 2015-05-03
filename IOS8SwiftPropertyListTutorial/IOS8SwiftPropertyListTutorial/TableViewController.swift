//
//  TableViewController.swift
//  IOS8SwiftPropertyListTutorial
//
//  Created by Arthur Knopper on 01/05/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var tableData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = NSBundle.mainBundle().pathForResource("TableData", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        tableData = dict!.objectForKey("AppleDevice") as! [String]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return tableData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
        cell.textLabel!.text = tableData[indexPath.row]

        return cell
    }
}
