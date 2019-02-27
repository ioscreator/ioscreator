//
//  TableViewController.swift
//  IOSPullToRefreshTutorial
//
//  Created by Arthur Knopper on 27/02/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var alphabet = ["A","B","C","D","E","F","G","H","I"]
    
    var isAscending = true
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action:  #selector(sortArray), for: .valueChanged)
        self.refreshControl = refreshControl
    }
    
    @objc func sortArray() {
        let sortedAlphabet = alphabet.reversed()
        
        for (index, element) in sortedAlphabet.enumerated() {
            alphabet[index] = element
        }
        
        tableView.reloadData()
        refreshControl?.endRefreshing()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // 1
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 2
        return alphabet.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 3
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = alphabet[indexPath.row]
        
        return cell
    }

}
