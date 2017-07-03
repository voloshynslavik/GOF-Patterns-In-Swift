//
//  CommandInvoker.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 23/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class CommandInvoker {

    fileprivate var commands: [Command] = []

    fileprivate func invokeCommand(_ command: Command) {
        print("**************Start invoke command**********")
        command.execute()
        print("**************End invoke command**********")
    }
}

extension CommandInvoker {

    public func addCommand(_ command: Command) -> Int {
        commands.append(command)
        return commands.count - 1
    }

    public func invokeCommand(commandId index: Int) {
        if 0..<commands.count ~= index {
            invokeCommand(commands[index])
        }
    }

    public func invokeAllCommands() {
        for command in commands {
            invokeCommand(command)
        }
    }

}
