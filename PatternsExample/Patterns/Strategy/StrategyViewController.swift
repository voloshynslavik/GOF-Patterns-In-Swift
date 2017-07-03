//
//  StrategyViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 12/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

private let sourceText = "I like swift!"

class StrategyViewController: UIViewController {

    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var firstLetterInUppercaseLabel: UILabel!

    @IBOutlet weak var textInUppercaseLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        sourceLabel.text = "Source text: '\(sourceText)'"

        use(strategy: UppercasedStrategy(), forText: sourceText, andSetToLabel: textInUppercaseLabel)
        use(strategy: FirstLetterInWordUppercasedStrategy(),
            forText: sourceText,
            andSetToLabel: firstLetterInUppercaseLabel)

    }

    private func use(strategy: Strategy, forText text: String, andSetToLabel label: UILabel) {
        label.text = strategy.format(string: text)
    }
}
