//
//  Restaurant.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 18/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class Restaurant {

    let name: String

    var orderSoupCalback: (() -> Void)?

    init(name: String) {
        self.name = name
    }

    func orderSoup() {
        print("Order soup")
        self.orderSoupCalback?()
    }

}

extension Restaurant: VisitorHandler {

    func visit(visitor: Visitor) {
        visitor.visitRestaurant(self)
    }

}
