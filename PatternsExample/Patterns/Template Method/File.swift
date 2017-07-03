//
//  File.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 13/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

class File {

    private var name: String
    private var fileExtension: String

    init(name: String, fileExtension: String) {
        self.name = name
        self.fileExtension = fileExtension
    }

    func getDetailsInfo() -> String {
        var info = "File Name: \(self.name)"
        info += "\nExtension: \(self.fileExtension)"
        info += "\nType: \(self.getType())"
        return info
    }

    func getType() -> String {
        assertionFailure("Method should be overriden")
        return ""
    }
}
