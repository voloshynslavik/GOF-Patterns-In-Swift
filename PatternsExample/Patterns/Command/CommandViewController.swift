//
//  CommandViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 23/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class CommandViewController: UIViewController {

    fileprivate var runEngineCommandId = -1
    fileprivate var unlockCarCommandId = -1
    fileprivate var runSlowlyCommandId = -1
    fileprivate var runFasterCommandId = -1

    @IBOutlet weak var carStateLabel: UILabel!

    fileprivate let car = Car()
    fileprivate var commandInvoker = CommandInvoker()

    override func viewDidLoad() {
        super.viewDidLoad()
        initCommands()
        carStateLabel.text = car.description
    }

    private func initCommands() {
        self.runEngineCommandId = commandInvoker.addCommand(RunEngineCommand(car: car))
        self.unlockCarCommandId = commandInvoker.addCommand(UnlockCarCommand(car: car))
        self.runFasterCommandId = commandInvoker.addCommand(RunFasterCommand(car: car, maxSpeed: 100, step: 10))
        self.runSlowlyCommandId = commandInvoker.addCommand(RunSlowlyCommand(car: car, minSpeed: 0, step: 5.6))
    }
}

extension CommandViewController {

    @IBAction func onRunEngineClicked(_ sender: UIButton) {
        commandInvoker.invokeCommand(commandId: runEngineCommandId)
        carStateLabel.text = car.description
    }

    @IBAction func onUnlockCarClicked(_ sender: UIButton) {
        commandInvoker.invokeCommand(commandId: unlockCarCommandId)
        carStateLabel.text = car.description
    }

    @IBAction func onRunSlowlyClicked(_ sender: UIButton) {
        commandInvoker.invokeCommand(commandId: runSlowlyCommandId)
        carStateLabel.text = car.description
    }

    @IBAction func onRunFasterClicked(_ sender: UIButton) {
        commandInvoker.invokeCommand(commandId: runFasterCommandId)
        carStateLabel.text = car.description
    }

    @IBAction func runAllClicked(_ sender: UIButton) {
        commandInvoker.invokeAllCommands()
        carStateLabel.text = car.description
    }
}
