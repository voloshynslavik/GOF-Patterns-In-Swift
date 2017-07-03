//
//  City.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 18/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class City {

    let name: String

    var visitHistoricalMuseumCallback: (() -> Void)?

    init(name: String) {
        self.name = name
    }

    func visitHistoricalMuseum() {
        print("Visit Historical Museum")
        visitHistoricalMuseumCallback?()
    }
}

extension City: VisitorHandler {

    func visit(visitor: Visitor) {
        visitor.visitCity(self)
    }

}
