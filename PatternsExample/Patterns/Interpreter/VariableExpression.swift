//
//  VariableExpression.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 04/03/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class VariableExpression {
    let name: String

    init(name: String) {
        self.name = name
    }
}

extension VariableExpression: Expression {
    func interpret(context: InterpreterContext) -> Int {
        return context.getValue(for: self)
    }
}
