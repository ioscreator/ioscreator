//
//  ViewController.swift
//  IOSJSONTutorial
//
//  Created by Arthur Knopper on 04/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    struct JSONTest: Codable {
        let date: String
        let time: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://date.jsontest.com"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            guard let data = data else { return }
            do {
                //Decode data
                let JSONData = try JSONDecoder().decode(JSONTest.self, from: data)
                
                //Get back to the main queue
                DispatchQueue.main.async {
                    self.dateLabel.text = JSONData.date
                    self.timeLabel.text = JSONData.time
                }
                
            } catch let jsonError {
                print(jsonError)
            }
            
            }.resume()
    }
    
}

