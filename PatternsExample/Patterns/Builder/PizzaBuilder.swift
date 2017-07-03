//
//  PizzaBuilder.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 13/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class PizzaBuilder {

    fileprivate var cheese: Bool = true
    fileprivate var ham: Bool = false
    fileprivate var chicken: Bool = false
    fileprivate var tomato: Bool = false
    fileprivate var corn: Bool = false
    fileprivate var mushrooms: Bool = false
    fileprivate var big: Bool = false

    func withCheese() -> PizzaBuilder {
        cheese = true
        return self
    }

    func withHam() -> PizzaBuilder {
        ham = true
        return self
    }

    func withChicken() -> PizzaBuilder {
        chicken = true
        return self
    }

    func withTomato() -> PizzaBuilder {
        tomato = true
        return self
    }

    func withCorn() -> PizzaBuilder {
        corn = true
        return self
    }

    func withMushrooms() -> PizzaBuilder {
        mushrooms = true
        return self
    }

    func bigSize() -> PizzaBuilder {
        big = true
        return self
    }

    func standartSize() -> PizzaBuilder {
        big = false
        return self
    }
}

extension PizzaBuilder: Builder {

    func build() -> Pizza {
        return Pizza(cheese: cheese,
                     ham: ham,
                     chicken: chicken,
                     tomato: tomato,
                     corn: corn,
                     mushrooms: mushrooms,
                     big: big)
    }

}
