//
//  RoomInHostel.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 28/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class RoomHostel {

    let number: Int

    fileprivate let nextRoom: RoomHostel?
    fileprivate var firstBed: BedInRoom?

    init(countBed: Int, number: Int, nextRoom: RoomHostel?) {
        self.nextRoom = nextRoom
        self.number = number

        var numberOfBed = countBed > 0 ? countBed : 0
        while numberOfBed > 0 {
            firstBed = BedInRoom (number: numberOfBed, room:self, nextBed: firstBed)
            numberOfBed -= 1
        }
    }
}

extension RoomHostel: BookRequestHandler {

    func handle(bookRequest request: BookRequest) -> Bool {
        if  let firstBed = firstBed,
            firstBed.handle(bookRequest: request) {
            return true
        }
        return nextRoom?.handle(bookRequest: request) ?? false
    }
}
