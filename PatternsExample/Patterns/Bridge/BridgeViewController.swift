//
//  BridgeViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 26/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class BridgeViewController: UIViewController {

    @IBOutlet weak var labelTextRepresenter: LabelTextRepresenter!
    @IBOutlet weak var textViewTextRepresenter: TextViewTextRepresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        initLabelRepresenter()
        initTextViewRepresenter()
    }

    private func initLabelRepresenter() {
        let boldStyle = BoldStyle()
        boldStyle.color = UIColor.darkGray

        labelTextRepresenter.style = boldStyle
        labelTextRepresenter.setText(text: "Set BoldStyle to Label representer")
    }

    private func initTextViewRepresenter() {
        let pencilStyle = PencilStyle()
        pencilStyle.color = UIColor.white

        textViewTextRepresenter.style = pencilStyle
        textViewTextRepresenter.setText(text: "Set PencilStyle to TextView representer")
    }
}
