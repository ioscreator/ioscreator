//
//  ContentView.swift
//  SwiftUILocalNotificationTutorial
//
//  Created by Arthur Knopper on 10/06/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        Button("Send Notification") {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])  {
                success, error in
                    if success {
                        print("authorization granted")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
            }
            
            let content = UNMutableNotificationContent()
                content.title = "Notification Tutorial"
                content.subtitle = "from ioscreator.com"
                content.body = " Notification triggered"
                content.sound = UNNotificationSound.default
                   
            // 2
            let imageName = "applelogo"
            guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
            
            let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
            
            content.attachments = [attachment]
                   
            // 3
           let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    
           let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
           
           // 4
           UNUserNotificationCenter.current().add(request)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
