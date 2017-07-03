//
//  Tea.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 07/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class Tea: Drink {

    var type: DrinkType {
        return .tea
    }

    var name: String {
        return "Tea"
    }

    var icon: UIImage? {
        return UIImage(named: "tea")
    }

}
