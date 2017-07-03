//
//  Mediator.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 05/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

protocol Mediator: class {

    var fastSwitch: UISwitch! {get set}
    var goodSwitch: UISwitch! {get set}
    var cheapSwitch: UISwitch! {get set}
    var statusLabel: UILabel! {get set}

    func onGoodChanged(on: Bool)
    func onCheapChanged(on: Bool)
    func onFastChanged(on: Bool)

    func resetToDefault()
}
