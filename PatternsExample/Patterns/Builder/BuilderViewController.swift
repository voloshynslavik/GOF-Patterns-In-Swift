//
//  BuilderViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 13/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class BuilderViewController: UIViewController {

    @IBOutlet weak var defaultPizzaLabel: UILabel!
    @IBOutlet weak var customPizzaLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        defaultPizzaLabel.text = PizzaBuilder().build().description

        let customPizzaBuilder = PizzaBuilder()
        let pizza = customPizzaBuilder.withHam()
                                      .bigSize()
                                      .withCheese()
                                      .withChicken()
                                      .withCorn()
                                      .withMushrooms()
                                      .withTomato()
                                      .build()
        customPizzaLabel.text = pizza.description
    }

}
