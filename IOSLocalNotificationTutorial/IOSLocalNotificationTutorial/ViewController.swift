//
//  ViewController.swift
//  IOSLocalNotificationTutorial
//
//  Created by Arthur Knopper on 03/02/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    @IBAction func sendNotification(_ sender: Any) {
        // 1
        let content = UNMutableNotificationContent()
        content.title = "Notification Tutorial"
        content.subtitle = "from ioscreator.com"
        content.body = " Notification triggered"
        
        // 2
        let imageName = "applelogo"
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
        
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        print(attachment)
        
        content.attachments = [attachment]
        
        // 3
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
        
        // 4
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
            (granted, error) in
            if granted {
                print("yes")
            } else {
                print("No")
            }
        }
    }


}

