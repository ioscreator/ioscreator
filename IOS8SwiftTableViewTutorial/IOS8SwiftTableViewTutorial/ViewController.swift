//
//  ViewController.swift
//  IOS8SwiftTableViewTutorial
//
//  Created by Arthur Knopper on 20-06-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	let tableData = ["One","Two","Three"]
                            
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
	{
		return tableData.count
	}
	
	func tableView(tableView: UITableView!,
		cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
	{
		
		let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
		
		cell.textLabel?.text = tableData[indexPath.row]
		
		return cell
	}


}

