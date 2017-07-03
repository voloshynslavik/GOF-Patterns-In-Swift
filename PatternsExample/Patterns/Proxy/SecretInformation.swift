//
//  SecretInformation.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 27/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

final class SecretInformation {

    fileprivate let info = "Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, macOS, watchOS, tvOS, and Linux. Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks and the large body of extant Objective-C (ObjC) code written for Apple products. It is built with the open source LLVM compiler framework and has been included in Xcode since version 6. On platforms other than Linux,[9] it uses the Objective-C runtime library which allows C, Objective-C, C++ and Swift code to run within one program"

}

extension SecretInformation: InformationReader {

    func read() -> String {
        return info
    }

}
