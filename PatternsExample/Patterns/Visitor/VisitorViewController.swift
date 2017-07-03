//
//  VisitorViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 15/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class VisitorViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var restaurantLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let city = City(name: "London")
        city.visitHistoricalMuseumCallback = {
            [unowned self] in
            self.cityLabel.text = "Went to historical museum in \(city.name)"
        }

        let restauraunt = Restaurant(name: "Three pigs")
        restauraunt.orderSoupCalback = {
            [unowned self] in
            self.restaurantLabel.text = "Ordered soup in '\(restauraunt.name)'"
        }

        let concreteVisitor = ConcreteVisitor()
        concreteVisitor.visitCity(city)
        concreteVisitor.visitRestaurant(restauraunt)

    }

}
