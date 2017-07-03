//
//  SubstractionExpression.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 04/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class SubstractionExpression {
    fileprivate let first: Expression
    fileprivate let second: Expression

    init(first: Expression, second: Expression) {
        self.first = first
        self.second = second
    }
}

extension SubstractionExpression: Expression {
    func interpret(context: InterpreterContext) -> Int {
        return first.interpret(context: context) - second.interpret(context: context)
    }
}
