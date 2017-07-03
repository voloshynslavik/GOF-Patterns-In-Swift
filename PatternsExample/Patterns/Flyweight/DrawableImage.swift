//
//  drawableRect.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 15/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class DrawableImage: Drawable {

    private let image: UIImage?

    init(id: String) {
        image = UIImage(named: id)
    }

    func draw(at point: CGPoint, context: CGContext) {
        UIGraphicsPushContext(context)
        image?.draw(at: point)
        UIGraphicsPopContext()
    }

}
