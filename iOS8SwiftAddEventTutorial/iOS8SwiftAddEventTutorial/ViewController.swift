//
//  ViewController.swift
//  iOS8SwiftAddEventTutorial
//
//  Created by Arthur Knopper on 18/01/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import EventKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 1
    let eventStore = EKEventStore()
    
    // 2
    switch EKEventStore.authorizationStatusForEntityType(EKEntityTypeEvent) {
    case .Authorized:
      insertEvent(eventStore)
    case .Denied:
      println("Access denied")
    case .NotDetermined:
      // 3
      eventStore.requestAccessToEntityType(EKEntityTypeEvent, completion:
        {[weak self] (granted: Bool, error: NSError!) -> Void in
          if granted {
            self!.insertEvent(eventStore)
          } else {
            println("Access denied")
          }
      })
    default:
      println("Case Default")
    }
  }
  
  func insertEvent(store: EKEventStore) {
    // 1
    let calendars = store.calendarsForEntityType(EKEntityTypeEvent)
      as! [EKCalendar]
    
    for calendar in calendars {
      // 2
      if calendar.title == "ioscreator" {
        // 3
        let startDate = NSDate()
        // 2 hours
        let endDate = startDate.dateByAddingTimeInterval(2 * 60 * 60)
        
        // 4
        // Create Event
        var event = EKEvent(eventStore: store)
        event.calendar = calendar
        
        event.title = "New Meeting"
        event.startDate = startDate
        event.endDate = endDate
        
        // 5
        // Save Event in Calendar
        var error: NSError?
        let result = store.saveEvent(event, span: EKSpanThisEvent, error: &error)
        
        if result == false {
          if let theError = error {
            println("An error occured \(theError)")
          }
        }
      }
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

