//
//  Hostel.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 28/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import Foundation

final class Hostel {

    fileprivate let firstRoom: RoomHostel?

    init(firstRoom: RoomHostel?) {
        self.firstRoom = firstRoom
    }
}

extension Hostel: BookRequestHandler {

    internal func handle(bookRequest request: BookRequest) -> Bool {
        return firstRoom?.handle(bookRequest: request) ?? false
    }

}
