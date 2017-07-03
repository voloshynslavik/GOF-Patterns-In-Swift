//
//  GoodSwitch.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 05/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class GoodSwitch: UISwitch, MediatorHolder {

    weak var mediator: Mediator? {
        didSet {
            mediator?.goodSwitch = self
        }
    }

    override var isOn: Bool {
        didSet {
            switchChanged(self)
        }
    }

     func switchChanged(_ switch: UISwitch) {
        mediator?.onGoodChanged(on: isOn)
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        addTarget(self, action: #selector(GoodSwitch.switchChanged(_:)), for: UIControlEvents.valueChanged)
    }

}
