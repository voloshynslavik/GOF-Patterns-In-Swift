//
//  ConcreteVisitor.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 18/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import Foundation

final class ConcreteVisitor: NSObject, Visitor {

    func visitCity(_ city: City) {
        city.visitHistoricalMuseum()
    }

    func visitRestaurant(_ restaurant: Restaurant) {
        restaurant.orderSoup()
    }

}
