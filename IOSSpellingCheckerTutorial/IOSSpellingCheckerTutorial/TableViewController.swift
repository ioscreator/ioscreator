//
//  TableViewController.swift
//  IOSSpellingCheckerTutorial
//
//  Created by Arthur Knopper on 13/05/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let words = ["devalopment", "development","devellopment"]

    override func viewDidLoad() {
        super.viewDidLoad()

  }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

      cell.textLabel?.text = words[indexPath.row]
      cell.textLabel?.backgroundColor = UIColor.clear

        return cell
    }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let cell = tableView.cellForRow(at: indexPath) {
      let currentWord = cell.textLabel?.text
      if let currentWord = currentWord {
        if wordIsSpelledCorrect(word: currentWord) {
          cell.backgroundColor = UIColor.green
        } else {
          cell.backgroundColor = UIColor.red
        }
    
        tableView.reloadData()
      }
    }
  }
  
  func wordIsSpelledCorrect(word: String) -> Bool {
    let checker = UITextChecker()
    let range = NSRange(location: 0, length: word.count)
    let wordRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
    
    return wordRange.location == NSNotFound
  }
  
 /* func isReal(word: String) -> Bool {
    let checker = UITextChecker()
    let range = NSRange(location: 0, length: word.utf16.count)
    let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
    
    return misspelledRange.location == NSNotFound
  }*/
  
 /* override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let cell = tableView.cellForRowAtIndexPath(indexPath)!
    if wordIsSpelledCorrect((cell.textLabel?.text)!) {
      cell.backgroundColor = UIColor.green
    } else {
      cell.backgroundColor = UIColor.red
    }
    
    tableView.reloadData()
  }*/
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
