//
//  FlyweightViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 10/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class FlyweightViewController: UIViewController {

    @IBOutlet var emojiView: EmojiView!
    private var timer: Timer?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        timer = Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) {
            [weak self] _ in
            self?.emojiView.drawNewEmoji()
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        timer?.invalidate()
    }

}
