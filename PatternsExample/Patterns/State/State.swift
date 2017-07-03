//
//  State.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 12/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

protocol State {

    var name: String {get}
    var backgroundColor: UIColor {get}

    func handleTap(stateView: StateView)
}
