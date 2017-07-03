//
//  GroupAnimations.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 14/04/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class GroupAnimations {

    fileprivate var animations: [AnimationComposite] = []
}

// MARK: - AnimationComposite
extension GroupAnimations: AnimationComposite {

    func addAnimation(_ animation: AnimationComposite) {
        animations.append(animation)
    }

    func removeAnimation(at index: Int) {
        animations.remove(at: index)
    }

    func startAnimation() {
        animations.forEach { (animation) in
            animation.startAnimation()
        }
    }

}
