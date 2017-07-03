//
//  InterpreterViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 02/03/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class InterpreterViewController: UIViewController {

    @IBOutlet private weak var aTextField: UITextField!
    @IBOutlet private weak var bTextField: UITextField!
    @IBOutlet private weak var cTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func onInputParameterChanged(_ sender: UITextField) {
        calculateExpression()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateExpression()
    }

    private func calculateExpression() {
        guard let a = aTextField.text?.intValue,
              let b = bTextField.text?.intValue,
              let c = cTextField.text?.intValue else {
            resultLabel.text = "Failed"
            return
        }

        let aVariable = VariableExpression(name: "a")
        let bVariable = VariableExpression(name: "b")
        let cVariable = VariableExpression(name: "c")

        let context = InterpreterContext()
        context.putValue(value: a, for: aVariable)
        context.putValue(value: b, for: bVariable)
        context.putValue(value: c, for: cVariable)

        //(a-b) * (c+b)
        let substraction = SubstractionExpression(first: aVariable, second: bVariable)
        let add = AddExpression(first: cVariable, second: bVariable)
        let multiply = MultiplicationExpression(first: substraction, second: add)

        let result = multiply.interpret(context: context)
        resultLabel.text = String(result)
    }
}

private extension String {
    var intValue: Int? {
        return Int(self)
    }
}
