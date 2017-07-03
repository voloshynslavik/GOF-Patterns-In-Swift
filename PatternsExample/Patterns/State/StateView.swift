//
//  StateView.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 12/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class StateView: UIView {

    @IBOutlet weak var stateLabel: UILabel!

    private var state: State? {
        didSet {
            stateLabel.text = state?.name
            backgroundColor = state?.backgroundColor
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setState(state: StateA())
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(StateView.didTap)))
    }

    func setState(state: State) {
        self.state = state
    }

    func didTap() {
        state?.handleTap(stateView: self)
    }
}
