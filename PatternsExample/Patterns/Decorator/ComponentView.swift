//
//  ViewComponent.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 25/04/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class ComponentView: UIView {

    override func draw(_ rect: CGRect) {
        // use drawing only from drawComponent method
    }

}

extension ComponentView: Component {

    func drawComponent(_ rect: CGRect) {
        let bpath: UIBezierPath = UIBezierPath(rect: rect)
        tintColor.set()
        bpath.fill()
    }

}
