//
//  ObserverViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 08/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class ObserverViewController: UIViewController {

    private let dateSubject = DateSubject()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let timeViewController = segue.destination as? TimeViewController {
            timeViewController.dateSubject = dateSubject
        } else if let dateViewController = segue.destination as? DateViewController {
            dateViewController.dateSubject = dateSubject
        }
    }

    @IBAction func onValueChanged(_ sender: UIDatePicker) {
        dateSubject.setDate(date: sender.date)
    }
}
