//
//  Car.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 23/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class Car: NSObject {

    var isEngineRunning = false {
        didSet {
            print("Engine is running - \(isEngineRunning)")
        }
    }

    var speed: Float = 0.0 {
        didSet {
            print("Speed = \(speed)")
        }
    }

    var isLocked = true {
        didSet {
            print("Car is \(isLocked ? "LOCKED" : "UNLOCKED")")
        }
    }

    override var description: String {
        return "Locked - \(isLocked ? "Yes" : "No")\n" +
               "Engine started- \(isEngineRunning ? "Yes" : "No")\n" +
               "Speed - \(speed)"
    }
}
