//
//  ColorAnimation.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 14/04/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

class ColorAnimation {

    fileprivate let view: UIView

    init(view: UIView) {
        self.view = view
    }
}

// MARK: - AnimationComposite
extension ColorAnimation: AnimationComposite {

    func addAnimation(_ animation: AnimationComposite) {
    }

    func removeAnimation(at index: Int) {
    }

    func startAnimation() {
        UIView.animate(withDuration: 2.0, animations: {
            [weak self] in
            self?.view.backgroundColor = self?.getRandomColor()
        }) {[weak self] completed in
            if completed {
                self?.startAnimation()
            }
        }
    }

    private func getRandomColor() -> UIColor {

        let randomRed = CGFloat(drand48())
        let randomGreen = CGFloat(drand48())
        let randomBlue = CGFloat(drand48())

        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
}
