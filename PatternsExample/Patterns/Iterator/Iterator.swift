//
//  Iterator.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 04/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

protocol Iterator: IteratorProtocol {
    func back() -> Self.Element?
}
