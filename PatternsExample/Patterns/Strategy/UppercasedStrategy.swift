//
//  UppercaseStrategy.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 12/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class UppercasedStrategy: Strategy {

    func format(string: String) -> String {
        return string.uppercased()
    }

}
