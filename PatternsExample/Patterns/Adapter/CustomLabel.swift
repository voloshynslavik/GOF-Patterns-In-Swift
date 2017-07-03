//
//  CustomLabel.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 20/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class CustomLabel: UIView {
    fileprivate var text = ""

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        if let textStyle = NSMutableParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle {
            textStyle.alignment = NSTextAlignment.center

            let textFontAttributes = [
                NSFontAttributeName: UIFont.boldSystemFont(ofSize: 32),
                NSForegroundColorAttributeName: UIColor.black,
                NSParagraphStyleAttributeName: textStyle
            ]
            text.draw(in: rect, withAttributes: textFontAttributes)
        }
    }

}

extension CustomLabel: Adapter {

    func setText(_ text: String) {
        self.text = text
        self.setNeedsDisplay()
    }
}
