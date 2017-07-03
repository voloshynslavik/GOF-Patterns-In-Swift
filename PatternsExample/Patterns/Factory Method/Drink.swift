//
//  Drink.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 07/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

protocol Drink {

    var type: DrinkType {get}
    var name: String {get}
    var icon: UIImage? {get}

}

enum DrinkType {
    case coffee
    case tea
}
