//
//  Drawable.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 15/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

protocol Drawable {

    init(id: String)

    func draw(at point: CGPoint, context: CGContext)

}
