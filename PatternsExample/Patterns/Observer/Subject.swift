//
//  Subject.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 08/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

class Subject {

    private var observers: [Observer] = []

    func attach(observer: Observer) {
        observers.append(observer)
    }

    func detach(observer: Observer) {
        var foundIndex: Int? = nil
        for (index, item) in observers.enumerated() {
            if item === observer {
                foundIndex = index
                break
            }
        }
        if let index = foundIndex {
            observers.remove(at: index)
        }
    }

    func notify() {
        observers.forEach { (observer) in
            observer.update()
        }
    }
}
