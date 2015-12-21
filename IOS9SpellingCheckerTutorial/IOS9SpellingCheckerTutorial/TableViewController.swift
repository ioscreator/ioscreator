//
//  TableViewController.swift
//  IOS9SpellingCheckerTutorial
//
//  Created by Arthur Knopper on 18/12/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let words = ["devalopment", "development","devellopment"]

    override func viewDidLoad() {
        super.viewDidLoad()
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
        return words.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = words[indexPath.row]
        cell.textLabel?.backgroundColor = UIColor.clearColor()

        return cell
    }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let cell = tableView.cellForRowAtIndexPath(indexPath)!
    if wordIsSpelledCorrect((cell.textLabel?.text)!) {
      cell.backgroundColor = UIColor.greenColor()
    } else {
      cell.backgroundColor = UIColor.redColor()
    }
    
    tableView.reloadData()
  }
  
  func wordIsSpelledCorrect(word: String) -> Bool {
    let checker = UITextChecker()
    let range = NSMakeRange(0, word.characters.count)
    let wordRange = checker.rangeOfMisspelledWordInString(word, range: range, startingAt: 0, wrap: false, language: "en")
    
    return wordRange.location == NSNotFound
  }
}
