//
//  TimeViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 08/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class TimeViewController: UIViewController {

    @IBOutlet fileprivate weak var timeLabel: UILabel!

    var dateSubject: DateSubject?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dateSubject?.attach(observer: self)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dateSubject?.detach(observer: self)
    }

}

extension TimeViewController: Observer {

    func update() {
        guard let date = dateSubject?.getDate() else {
            timeLabel.text = nil
            return
        }
        let formatter = DateFormatter()
        formatter.dateFormat = "h.mm a"
        formatter.string(from: date)
        timeLabel.text = formatter.string(from: date)
    }

}
