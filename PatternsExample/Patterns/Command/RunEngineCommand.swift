//
//  RunEngineCommand.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 23/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class RunEngineCommand {

    fileprivate let car: Car

    public init(car: Car) {
        self.car = car
    }

}

extension RunEngineCommand: Command {

    public func execute() {
        if !car.isEngineRunning {
            car.isEngineRunning = true
        } else {
            print("Engine is running already")
        }
    }

}
