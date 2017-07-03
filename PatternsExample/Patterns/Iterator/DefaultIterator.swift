//
//  DefaultIterator.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 04/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class DefaultIterator {

    fileprivate let countries: Countries
    fileprivate var index = -1

    init(countries: Countries) {
        self.countries = countries
    }
}

extension DefaultIterator: Iterator {
    public func next() -> String? {
        guard let element = countries.element(for: index + 1) else {
            index = countries.count
            return nil
        }
        index += 1
        return element
    }

    func back() -> String? {
        guard let element = countries.element(for: index - 1) else {
            index = -1
            return nil
        }
        index -= 1
        return element
    }
}
