//
//  StateB.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 12/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class StateB: State {

    var name: String {
        return "B"
    }

    var backgroundColor: UIColor {
        return UIColor.red
    }

    func handleTap(stateView: StateView) {
        stateView.setState(state: StateC())
    }

}
