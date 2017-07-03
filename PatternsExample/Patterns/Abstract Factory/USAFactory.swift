//
//  USAFactory.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 11/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class USAFactory: AbstractFactory {

    func createCurrency() -> Currency {
        return USACurrency()
    }

    func createTimeFormatter() -> TimeFormatter {
        return USATimeFormatter()
    }

}
