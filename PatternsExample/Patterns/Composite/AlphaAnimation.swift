//
//  FadeAnimation.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 14/04/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class AlphaAnimation: NSObject {

    fileprivate var view: UIView

    init(view: UIView) {
        self.view = view
    }

}

// MARK: - AnimationComposite
extension AlphaAnimation: AnimationComposite {

    func addAnimation(_ animation: AnimationComposite) {
    }

    func removeAnimation(at index: Int) {
    }

    func startAnimation() {
        self.view.alpha = 1.0
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse], animations: {
            [weak self] in
            self?.view.alpha = 0.4
        })
    }

}
