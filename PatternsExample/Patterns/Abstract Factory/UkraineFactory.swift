//
//  UkraineFactory.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 11/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class UkraineFactory: AbstractFactory {

    func createCurrency() -> Currency {
        return UkraineCurrency()
    }

    func createTimeFormatter() -> TimeFormatter {
        return UkraineTimeFormatter()
    }

}
