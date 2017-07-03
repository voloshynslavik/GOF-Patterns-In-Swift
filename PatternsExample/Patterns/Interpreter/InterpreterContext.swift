//
//  InterpretterContext.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 04/03/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class InterpreterContext {
    private var values: [String:Int] = [:]

    func putValue(value: Int, for variable: VariableExpression) {
        values[variable.name] = value
    }

    func getValue(for variable: VariableExpression) -> Int {
        return values[variable.name] ?? 0
    }
}
