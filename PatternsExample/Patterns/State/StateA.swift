//
//  StateA.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 12/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class StateA: State {

    var name: String {
        return "A"
    }

    var backgroundColor: UIColor {
        return UIColor.cyan
    }

    func handleTap(stateView: StateView) {
        stateView.setState(state: StateB())
    }

}
