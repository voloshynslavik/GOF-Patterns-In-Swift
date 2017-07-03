//
//  ProxyViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 27/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class ProxyViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var infoLabel: UILabel!

    private let proxyInformation = ProxySecretInformation()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onLoginClicked() {
        guard let password = passwordTextField.text else {
            return
        }

        passwordTextField.text = nil
        proxyInformation.login(password: password)
        infoLabel.text = proxyInformation.read()
    }
}
