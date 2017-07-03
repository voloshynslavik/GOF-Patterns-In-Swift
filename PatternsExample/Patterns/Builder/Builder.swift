//
//  Builder.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 13/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

protocol Builder {
    associatedtype ObjectType

    func build() -> ObjectType

}
