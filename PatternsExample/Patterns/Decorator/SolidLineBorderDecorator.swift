//
//  StrokeLineDecorator.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 25/04/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class SolidLineBorderDecorator: UIView {

    override func draw(_ rect: CGRect) {
        drawComponent(rect)
    }

}

extension SolidLineBorderDecorator: Component {

    func drawComponent(_ rect: CGRect) {
        for view in subviews {
            if let component = view as? Component {
                component.drawComponent(rect)
            }
        }

        self.drawDashLine(rect)
    }

    private func drawDashLine(_ rect: CGRect) {
        let  path = UIBezierPath(rect: rect)
        path.lineWidth = 8.0
        tintColor.set()
        path.stroke()
    }
}
