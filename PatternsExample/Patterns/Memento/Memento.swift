//
//  Memento.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 07/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class Memento {

    private var array:[(rect: CGRect, color: UIColor?)] = []

    func put(rect: CGRect, color: UIColor?) {
        let data = (rect:rect, color: color)
        array.append(data)
    }

    func get(with index: Int) -> (rect: CGRect, color: UIColor?)? {
        if 0..<array.count ~= index {
            return array[index]
        }
        return nil
    }
}
