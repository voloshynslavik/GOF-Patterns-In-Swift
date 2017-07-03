//
//  PrototypeViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 28/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class PrototypeViewController: UIViewController {

    @IBOutlet weak var originalInfoLabel: UILabel!
    @IBOutlet weak var prototypeInfoLabel: UILabel!

    private lazy var bicycle: Bicycle = {
        let bicycle = Bicycle()
        bicycle.model         = "CTM Streem"
        bicycle.frameMaterial = "Steel"
        bicycle.gears         = 21
        bicycle.wheelSize     = 28

        return bicycle
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        originalInfoLabel.text  = bicycle.info
        prototypeInfoLabel.text = nil
    }

    @IBAction func onPrototypeClicked(_ sender: UIButton) {
        sender.isHidden = true
        let bicyclePrototype = bicycle.clone()
        prototypeInfoLabel.text = bicyclePrototype.info
    }

}
