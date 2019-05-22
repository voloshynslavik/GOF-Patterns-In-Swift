//
//  FastSwitch.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 05/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class FastSwitch: UISwitch, MediatorHolder {

    weak var mediator: Mediator? {
        didSet {
            mediator?.fastSwitch = self
        }
    }

    override var isOn: Bool {
        didSet {
            switchChanged(self)
        }
    }

    @objc func switchChanged(_ switch: UISwitch) {
        mediator?.onFastChanged(on: isOn)
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        addTarget(self, action: #selector(FastSwitch.switchChanged(_:)), for: UIControl.Event.valueChanged)
    }
}
