//
//  Bicycle.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 30/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class Bicycle {

    var gears = 0
    var frameMaterial = ""
    var model = ""
    var wheelSize = 0

    var info: String {
        return "Model - \(model)\n" +
               "Gears - \(gears)\n" +
               "Frame material - \(frameMaterial)\n" +
               "Wheel size - \(wheelSize)"

    }
}

extension Bicycle: Prototype {

    func clone() -> Bicycle {
        let bicycle = Bicycle()
        bicycle.gears = gears
        bicycle.frameMaterial = frameMaterial
        bicycle.model = model
        bicycle.wheelSize = wheelSize

        return bicycle
    }

}
