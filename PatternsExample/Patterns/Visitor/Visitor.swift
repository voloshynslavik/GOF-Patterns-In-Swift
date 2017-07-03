//
//  Visitor.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 18/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

protocol Visitor {

    func visitCity(_ city: City)
    func visitRestaurant(_ restaurant: Restaurant)

}
