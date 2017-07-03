//
//  AdapterViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 19/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

class AdapterViewController: UIViewController {

    @IBOutlet weak var defaultLabel: UILabel!
    @IBOutlet weak var customLabel: CustomLabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        customLabel.setText("Adapter for Custom Label")

        let defaultLabelAdapter = DefaultLabelAdapter(label: defaultLabel)
        defaultLabelAdapter.setText("Adapter for Default Label")
    }

}
