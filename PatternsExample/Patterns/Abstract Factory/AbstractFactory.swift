//
//  AbstractFactory.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 11/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

protocol AbstractFactory {

    func createCurrency() -> Currency
    func createTimeFormatter() -> TimeFormatter

}
