//
//  CarListViewController.swift
//  IOS8SwiftAddRowsTableViewTutorial
//
//  Created by Arthur Knopper on 21/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class CarListViewController: UITableViewController {
  
  var cars = [String]()
  var newCar: String = ""
  
  @IBAction func cancel(segue:UIStoryboardSegue) {
    
  }
  
  @IBAction func done(segue:UIStoryboardSegue) {
    var carDetailVC = segue.sourceViewController as! CarDetailViewController
    newCar = carDetailVC.name
    
    cars.append(newCar)
  }

    override func viewDidLoad() {
        super.viewDidLoad()

        cars = ["BMW","Audi","Volkswagen"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return cars.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
      
        cell.textLabel!.text = cars[indexPath.row]

        return cell
    }

}
