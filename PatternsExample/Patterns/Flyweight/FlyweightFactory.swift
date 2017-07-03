//
//  FlywightFactory.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 15/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class FlyweightFactory {

    private var drawables: [String: Drawable] = [:]

    func getDrawable(type: Drawable.Type, id: String) -> Drawable {
        guard let drawable = drawables[id] else {
            let drawable = type.init(id: id)
            return drawable
        }

        return drawable
    }

}
