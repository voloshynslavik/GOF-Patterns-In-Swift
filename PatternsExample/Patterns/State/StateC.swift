//
//  StateC.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 12/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class StateC: State {

    var name: String {
        return "C"
    }

    var backgroundColor: UIColor {
        return UIColor.blue
    }

    func handleTap(stateView: StateView) {
        stateView.setState(state: StateA())
    }

}
