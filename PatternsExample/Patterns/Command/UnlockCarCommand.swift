//
//  UnlockCarCommand.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 23/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class UnlockCarCommand {

    fileprivate let car: Car

    public init(car: Car) {
        self.car = car
    }

}

extension UnlockCarCommand: Command {

    public func execute() {
        if car.isLocked {
            car.isLocked = false
        } else {
            print("Car is unlocked already")
        }
    }

}
