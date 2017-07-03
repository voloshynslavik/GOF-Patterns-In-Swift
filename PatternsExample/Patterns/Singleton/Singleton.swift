//
//  File.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 06/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class Singleton {

    static let sharedInstance = Singleton()

    private init() {}

    lazy var image: UIImage? = {
        return UIImage(named: "swift")
    }()

}
