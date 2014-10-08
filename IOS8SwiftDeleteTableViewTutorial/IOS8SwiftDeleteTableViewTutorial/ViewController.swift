//
//  ViewController.swift
//  IOS8SwiftDeleteTableViewTutorial
//
//  Created by Arthur Knopper on 06/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  var numbers = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return numbers.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    println("start")
    var cell = tableView.dequeueReusableCellWithIdentifier("numberCell") as? UITableViewCell
    
    cell?.textLabel?.text = numbers[indexPath.row]
    
    return cell!
  }
  
  override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == UITableViewCellEditingStyle.Delete {
      numbers.removeAtIndex(indexPath.row)
      
      tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)

    }
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

