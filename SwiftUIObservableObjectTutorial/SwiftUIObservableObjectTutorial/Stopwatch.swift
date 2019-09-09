//
//  Stopwatch.swift
//  SwiftUIObservableObjectTutorial
//
//  Created by Arthur Knopper on 09/09/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class Stopwatch: ObservableObject {
    @Published var counter: Int = 0
    
    var timer = Timer()
    
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.counter += 1
        }
    }
    
    func stop() {
        timer.invalidate()
    }
    
    func reset() {
        counter = 0
        timer.invalidate()
    }
}
