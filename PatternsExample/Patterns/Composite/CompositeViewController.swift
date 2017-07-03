//
//  CompositeViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 14/04/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class CompositeViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var greenView: UIView!

    private lazy var groupAnimations: AnimationComposite = {
        var animations = GroupAnimations()

        let alphaAnimation = AlphaAnimation(view: self.blueView)
        animations.addAnimation(alphaAnimation)

        let colorAnimation = ColorAnimation(view: self.greenView)
        animations.addAnimation(colorAnimation)

        return animations
    }()

    private lazy var alphaAnimation: AnimationComposite = {
       return AlphaAnimation(view: self.redView)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        groupAnimations.startAnimation()
        alphaAnimation.startAnimation()
    }
}
