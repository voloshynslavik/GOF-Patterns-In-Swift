//
//  Coffee.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 07/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class Coffee: Drink {

    var type: DrinkType {
        return .coffee
    }

    var name: String {
        return "Coffee"
    }

    var icon: UIImage? {
        return UIImage(named: "coffee")
    }

}
