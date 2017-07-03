//
//  File.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 13/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

struct Pizza {

    private var cheese: Bool
    private var ham: Bool
    private var chicken: Bool
    private var tomato: Bool
    private var corn: Bool
    private var mushrooms: Bool
    private var big: Bool

    var description: String {
        let sizeString = big ? "big" : "small"
        var descriprion = "Size: \(sizeString)\n" +
                           "Ingredients: "
        if cheese {
            descriprion += "cheese "
        }
        if ham {
            descriprion += "ham "
        }
        if chicken {
            descriprion += "chicken "
        }
        if tomato {
            descriprion += "tomato "
        }
        if mushrooms {
            descriprion += "mushrooms "
        }
        if corn {
            descriprion += "corn"
        }

        return descriprion
    }

    init(cheese: Bool, ham: Bool, chicken: Bool, tomato: Bool, corn: Bool, mushrooms: Bool, big: Bool) {
        self.cheese = cheese
        self.ham = ham
        self.chicken = chicken
        self.tomato = tomato
        self.corn = corn
        self.mushrooms = mushrooms
        self.big = big
    }

}
