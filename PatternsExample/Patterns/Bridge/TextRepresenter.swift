//
//  TextRepresenter.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 26/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

protocol TextRepresenter {

    var style: WritingStyle? {get set}
    func setText(text: String)
}
