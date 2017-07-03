//
//  ViewsMediator.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 05/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class ViewsMediator {

    var fastSwitch: UISwitch!
    var goodSwitch: UISwitch!
    var cheapSwitch: UISwitch!
    var statusLabel: UILabel!
}

extension ViewsMediator: Mediator {

    func onGoodChanged(on: Bool) {
        update(with: on ? .longToDeliver : .notGood)
    }

    func onCheapChanged(on: Bool) {
       update(with: on ? .notGood : .expensive)
    }

    func onFastChanged(on: Bool) {
        update(with: on ? .expensive : .longToDeliver)
    }

    func resetToDefault() {
        update(with: .longToDeliver)
    }
}

extension ViewsMediator {

    fileprivate func update(with state: MediatorState) {
        switch state {
            case .expensive:
                goodSwitch.setOn(true, animated: true)
                cheapSwitch.setOn(false, animated: true)
                fastSwitch.setOn(true, animated: true)
                statusLabel.text = "Expensive"
            case .longToDeliver:
                goodSwitch.setOn(true, animated: true)
                cheapSwitch.setOn(true, animated: true)
                fastSwitch.setOn(false, animated: true)
                statusLabel.text = "Will take time to deliver"
            case .notGood:
                goodSwitch.setOn(false, animated: true)
                cheapSwitch.setOn(true, animated: true)
                fastSwitch.setOn(true, animated: true)
                statusLabel.text = "Not the best quality"
        }
    }
}

private enum MediatorState {
    case notGood, expensive, longToDeliver
}
