//
//  RunFasterCommand.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 23/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class RunFasterCommand {

    fileprivate let car: Car
    fileprivate let maxSpeed: Float
    fileprivate let step: Float

    public init(car: Car, maxSpeed: Float, step: Float) {
        self.car = car
        self.step = step
        self.maxSpeed = maxSpeed
    }

}

extension RunFasterCommand: Command {

    public func execute() {
        if car.isEngineRunning {
            var newSpeed = car.speed + step
            if newSpeed > maxSpeed {
                newSpeed = maxSpeed
            }
            car.speed = newSpeed
        } else {
            print("Engine isn't runnung")
        }
    }

}
