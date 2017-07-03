//
//  DefaultLabelAdapter.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 20/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class DefaultLabelAdapter {

    fileprivate let label: UILabel

    init(label: UILabel) {
        self.label = label
    }
}

extension DefaultLabelAdapter: Adapter {

    func setText(_ text: String) {
        label.text = text
    }

}
