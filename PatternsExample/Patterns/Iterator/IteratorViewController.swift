//
//  IteratorViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 04/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class IteratorViewController: UIViewController {

    fileprivate var countries = Countries()

    fileprivate var defaultIterator: DefaultIterator!
    fileprivate var filteredIterator: FilterIterator!

    @IBOutlet fileprivate weak var currentCountryDefaultIteratorLabel: UILabel!
    @IBOutlet fileprivate weak var currentCountryFilterIteratorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        defaultIterator = countries.defaultIterator()
        filteredIterator = countries.filterIterator(with: "sw")
        useDefaultIteratorInFor()
    }
}

// MARK: default iterator example
extension IteratorViewController {

    fileprivate func useDefaultIteratorInFor() {
        for country in countries {
            print(country)
        }
    }

    @IBAction func onNextDefaultClicked(_ sender: UIButton) {
        currentCountryDefaultIteratorLabel.text = defaultIterator.next() ?? "End..."
    }

    @IBAction func onBackDefaultClicked(_ sender: UIButton) {
        currentCountryDefaultIteratorLabel.text = defaultIterator.back() ?? "Start..."
    }
}

// MARK: filter iterator example
extension IteratorViewController {

    @IBAction func onNextFilterClicked(_ sender: UIButton) {
        currentCountryFilterIteratorLabel.text = filteredIterator.next() ?? "End..."
    }

    @IBAction func onBackFilterClicked(_ sender: UIButton) {
        currentCountryFilterIteratorLabel.text = filteredIterator.back() ?? "Start..."
    }
}
