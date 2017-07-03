//
//  AnimationComposite.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 14/04/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

protocol AnimationComposite {

    func addAnimation(_ animation: AnimationComposite)
    func removeAnimation(at index: Int)

    func startAnimation()

}
