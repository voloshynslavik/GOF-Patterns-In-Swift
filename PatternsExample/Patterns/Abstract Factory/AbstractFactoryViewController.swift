//
//  AbstractFactoryViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 08/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class AbstractFactoryViewController: UIViewController {

    @IBOutlet weak var usaInfoLabel: UILabel!
    @IBOutlet weak var ukraineInfoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        update(label: usaInfoLabel, with: createFactory(with: .usa))
        update(label: ukraineInfoLabel, with: createFactory(with: .ukraine))
    }

}

extension AbstractFactoryViewController {

    fileprivate func update(label: UILabel, with factory: AbstractFactory) {
        let currency = factory.createCurrency()
        let timeFormatter = factory.createTimeFormatter()
        label.text = "Currency name: \(currency.name)\n" +
                     "Currency symbol: \(currency.symbol)\n\n" +
                     "Time formatter: \(timeFormatter.format)"
    }

}

extension AbstractFactoryViewController {

    enum Country {
        case usa
        case ukraine
    }

    fileprivate func createFactory(with country: Country) -> AbstractFactory {
        switch country {
            case .usa:
                return USAFactory()
            case .ukraine:
                return UkraineFactory()
        }
    }

}
