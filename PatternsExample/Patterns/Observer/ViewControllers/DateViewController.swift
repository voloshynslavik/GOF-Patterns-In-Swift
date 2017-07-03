//
//  DateViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 08/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class DateViewController: UIViewController {

    @IBOutlet fileprivate weak var dateLabel: UILabel!

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

extension DateViewController: Observer {

    func update() {
        guard let date = dateSubject?.getDate() else {
            dateLabel.text = nil
            return
        }
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        formatter.string(from: date)
        dateLabel.text = formatter.string(from: date)
    }

}
