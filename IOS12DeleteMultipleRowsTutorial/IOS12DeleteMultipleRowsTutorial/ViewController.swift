//
//  ViewController.swift
//  IOS12DeleteMultipleRowsTutorial
//
//  Created by Arthur Knopper on 30/09/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var numbers = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]
    
    @IBAction func startEditing(_ sender: Any) {
        isEditing = !isEditing
    }
    
    @IBAction func deleteRows(_ sender: Any) {
        if let selectedRows = tableView.indexPathsForSelectedRows {
            // 1
            var items = [String]()
            for indexPath in selectedRows  {
                items.append(numbers[indexPath.row])
            }
            // 2
            for item in items {
                if let index = numbers.index(of: item) {
                    numbers.remove(at: index)
                }
            }
            // 3
            tableView.beginUpdates()
            tableView.deleteRows(at: selectedRows, with: .automatic)
            tableView.endUpdates()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.allowsMultipleSelectionDuringEditing = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numberCell", for: indexPath)
        cell.textLabel?.text = numbers[indexPath.row]
        
        return cell
    }
}

