//
//  RunSlowlyCommand.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 23/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class RunSlowlyCommand {

    fileprivate let car: Car
    fileprivate let minSpeed: Float
    fileprivate let step: Float

    public init(car: Car, minSpeed: Float, step: Float) {
        self.car = car
        self.step = step
        self.minSpeed = minSpeed
    }

}

extension RunSlowlyCommand: Command {

    public func execute() {
        if car.isEngineRunning {
            var newSpeed = car.speed - step
            if newSpeed < minSpeed {
                newSpeed = minSpeed
            }
            car.speed = newSpeed
        } else {
            print("Engine isn't runnung")
        }
    }

}
