//
//  FilterIterator.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 05/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class FilterIterator {

    fileprivate let countries: Countries
    fileprivate let filter: String
    fileprivate var index = -1

    init(countries: Countries, filter: String) {
        self.countries = countries
        self.filter = filter.lowercased()
    }
}

extension FilterIterator: Iterator {
    public func next() -> String? {
        while index < countries.count {
            index += 1
            if let country = countries.element(for: index) {
                if country.lowercased().contains(filter) {
                    return country
                }
            }
        }
        index = countries.count
        return nil
    }

    func back() -> String? {
        while index >= 0 {
            index -= 1
            if let country = countries.element(for: index) {
                if country.lowercased().contains(filter) {
                    return country
                }
            }
        }
        index = -1
        return nil
    }
}
