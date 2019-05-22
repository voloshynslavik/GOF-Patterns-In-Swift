//
//  CheapSwitch.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 05/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class CheapSwitch: UISwitch, MediatorHolder {

    weak var mediator: Mediator? {
        didSet {
            mediator?.cheapSwitch = self
        }
    }

    override var isOn: Bool {
        didSet {
            switchChanged(self)
        }
    }

    @objc func switchChanged(_ switch: UISwitch) {
        mediator?.onCheapChanged(on: isOn)
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        addTarget(self, action: #selector(CheapSwitch.switchChanged(_:)), for: UIControl.Event.valueChanged)
    }
}
