//
//  Prototype.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 30/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

protocol Prototype {
    associatedtype ClonedType

    func clone() -> ClonedType

}
