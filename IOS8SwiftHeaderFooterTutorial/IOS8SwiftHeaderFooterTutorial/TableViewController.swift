//
//  TableViewController.swift
//  IOS8SwiftHeaderFooterTutorial
//
//  Created by Arthur Knopper on 09/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
  
  var countriesinEurope = ["France","Spain","Germany"]
  var countriesinAsia = ["Japan","China","India"]
  var countriesInSouthAmerica = ["Argentia","Brasil","Chile"]

    override func viewDidLoad() {
        super.viewDidLoad()
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      // 1
      // Return the number of sections.
      return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      // 2
      return 3
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
      
      // 3
      // Configure the cell...
      switch (indexPath.section) {
      case 0:
        cell.textLabel?.text = countriesinEurope[indexPath.row]
      case 1:
        cell.textLabel?.text = countriesinAsia[indexPath.row]
      case 2:
        cell.textLabel?.text = countriesInSouthAmerica[indexPath.row]
        //return sectionHeaderView
      default:
        cell.textLabel?.text = "Other"
      }
      
      return cell
    }
  
  override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let  headerCell = tableView.dequeueReusableCellWithIdentifier("HeaderCell") as! CustomHeaderCell
    headerCell.backgroundColor = UIColor.cyanColor()
  
    switch (section) {
    case 0:
      headerCell.headerLabel.text = "Europe";
      //return sectionHeaderView
    case 1:
      headerCell.headerLabel.text = "Asia";
      //return sectionHeaderView
    case 2:
      headerCell.headerLabel.text = "South America";
      //return sectionHeaderView
    default:
      headerCell.headerLabel.text = "Other";
    }
    
    return headerCell
  }
  
  override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    let footerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 40))
    
    footerView.backgroundColor = UIColor.blackColor()
    
    return footerView
  }
  
  override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    return 40.0
  }
  
  
  
  
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
