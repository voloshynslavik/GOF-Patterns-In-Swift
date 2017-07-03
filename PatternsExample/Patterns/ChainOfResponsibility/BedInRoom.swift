//
//  BadInRoom.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 28/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import Foundation

final class BedInRoom {

    fileprivate let nextBed: BedInRoom?
    let number: Int
    unowned let room: RoomHostel

    fileprivate var timer: Timer?

    init(number: Int, room: RoomHostel, nextBed: BedInRoom?) {
        self.nextBed = nextBed
        self.number = number
        self.room = room
    }

    deinit {
        timer?.invalidate()
        timer = nil
    }
}

extension BedInRoom: BookRequestHandler {

    func handle(bookRequest request: BookRequest) -> Bool {
        if timer != nil {
            return nextBed?.handle(bookRequest: request) ?? false
        }
        request.didCheckedInCallBack(self)
        print("Person \(request.personName) checked IN into room - \(room.number) on bed - \(number)")
        timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(request.nightsCount), repeats: false) {
            [weak self] (timer) in
            guard let bedInRoom = self else {
                return
            }
            print("Person \(request.personName) checked OUT into room - \(bedInRoom.room.number) on bed - \(bedInRoom.number)")
            bedInRoom.timer = nil
            request.didCheckedOutCallBack(bedInRoom)
        }
        return true
    }

}
