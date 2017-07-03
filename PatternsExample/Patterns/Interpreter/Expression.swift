//
//  Expression.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 04/03/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

protocol Expression {
    func interpret(context: InterpreterContext) -> Int
}
