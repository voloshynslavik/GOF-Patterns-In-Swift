//
//  MediatorViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 05/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class MediatorViewController: UIViewController {

    private let mediator: Mediator = ViewsMediator()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupMediator(parentView: self.view)
        mediator.resetToDefault()
    }

    private func setupMediator(parentView: UIView) {
        for view in parentView.subviews {
            if var mediatorHolder = view as? MediatorHolder {
                mediatorHolder.mediator = mediator
            }
            setupMediator(parentView: view)
        }
    }
}
