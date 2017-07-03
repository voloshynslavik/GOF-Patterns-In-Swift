//
//  DateSubject.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 09/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import Foundation

final class DateSubject: Subject {

    private var date: Date!

    func setDate(date: Date) {
        self.date = date
        self.notify()
    }

    func getDate() -> Date! {
        return date
    }
}
