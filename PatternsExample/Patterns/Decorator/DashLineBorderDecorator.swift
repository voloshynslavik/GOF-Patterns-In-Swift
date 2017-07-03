//
//  DashedLineBorderDecorator.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 25/04/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

class DashLineBorderDecorator: UIView {

    override func draw(_ rect: CGRect) {
        drawComponent(rect)
    }

}

extension DashLineBorderDecorator: Component {

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
        let dashes: [CGFloat] = [ 0.0, 20.0 ]
        path.setLineDash(dashes, count: dashes.count, phase: 0.0)
        path.lineWidth = 8.0
        path.lineCapStyle = .square
        tintColor.set()
        path.stroke()
    }
}
