//
//  DrinkFactory.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 07/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class DrinkFactory {

    static func create(with type: DrinkType) -> Drink {
        switch type {
            case .tea:
                return Tea()
            case .coffee:
                return Coffee()
        }
    }

}
