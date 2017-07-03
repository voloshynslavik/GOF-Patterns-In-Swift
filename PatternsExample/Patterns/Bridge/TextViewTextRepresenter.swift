//
//  TextViewTextRepresenter.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 26/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class TextViewTextRepresenter: UITextView, TextRepresenter {

    var style: WritingStyle? {
        didSet {
            self.font      = style?.font
            self.textColor = style?.color
        }
    }

    func setText(text: String) {
        self.text = text
    }

}
