//
//  MementoViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 07/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class MementoViewController: UIViewController {

    @IBOutlet weak var canvasHolderView: UIView!
    @IBOutlet private weak var savedStatesLabel: UILabel!
    private var canvas: Canvas!
    private var states: [Memento] = [] {
        didSet {
            savedStatesLabel.text = "Saved states \(states.count)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        states.removeAll()
        canvas = Canvas(view: canvasHolderView)
        canvas.addEntity(with: CGRect(x: 100, y: 100, width: 50, height: 50), and: UIColor.red)
        canvas.addEntity(with: CGRect(x: 200, y: 300, width: 80, height: 80), and: UIColor.green)
        canvas.didStartMoveEntity = {
            [unowned self] in
            if let state = self.canvas.save() {
                self.states.append(state)
            }
        }
    }

    @IBAction func onPreviousStateButtonClicked(_ sender: Any) {
        if states.isEmpty {
            return
        }
        let state = states.removeLast()
        canvas.restore(with: state)
    }
}
