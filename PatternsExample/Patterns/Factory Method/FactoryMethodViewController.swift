//
//  FactoryMethodViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 07/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class FactoryMethodViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tea = DrinkFactory.create(with: .tea)
        updateViews(label: firstLabel, imageView: firstImageView, with: tea)

        let coffee = DrinkFactory.create(with: .coffee)
        updateViews(label: secondLabel, imageView: secondImageView, with: coffee)

    }

    private func updateViews(label: UILabel, imageView: UIImageView, with drink: Drink) {
        label.text = drink.name
        imageView.image = drink.icon
    }

}
