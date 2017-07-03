//
//  ChainOfResponsibilityViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 28/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class ChainOfResponsibilityViewController: UIViewController {

    private var hostel: Hostel!

    @IBOutlet weak var room101StackView: UIStackView!
    @IBOutlet weak var room102StackView: UIStackView!
    @IBOutlet weak var room103StackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        initHostel()
    }

    private func initHostel() {
        let thirdRoom = RoomHostel(countBed: 6, number: 103, nextRoom: nil)
        initRoom(with: room103StackView, tag: 103, countBeds: 6)
        let secondRoom = RoomHostel(countBed: 4, number: 102, nextRoom: thirdRoom)
        initRoom(with: room102StackView, tag: 102, countBeds: 4)
        let firstRoom = RoomHostel(countBed: 2, number: 101, nextRoom: secondRoom)
        initRoom(with: room101StackView, tag: 101, countBeds: 2)

        hostel = Hostel(firstRoom: firstRoom)
    }

    @IBAction func onBookBedClicked(_ sender: UIButton) {
        let nightsCount = arc4random_uniform(4) + UInt32(2)
        let request = BookRequest(nightsCount: Int(nightsCount),
                                  personName: randomString(length: 4),
                                  didCheckedInCallBack: { [weak self] (bedInRoom) in
            self?.updateBedState(booked: true, room: bedInRoom.room.number, bed: bedInRoom.number)
        }) { [weak self] (bedInRoom) in
            self?.updateBedState(booked: false, room: bedInRoom.room.number, bed: bedInRoom.number)
        }
        if !hostel.handle(bookRequest: request) {
            print("All beds have booked already!!!")
        }
    }

    private func initRoom(with stackView: UIStackView, tag: Int, countBeds: Int) {
        for i in 1...countBeds {
            let label = UILabel()
            label.textColor = .white
            label.textAlignment = .center
            label.tag = i
            stackView.tag = tag
            stackView.addArrangedSubview(label)
            updateBedState(booked: false, room: tag, bed: i)
        }
    }

    fileprivate func updateBedState(booked: Bool, room: Int, bed: Int) {
        if let stackView = self.view.viewWithTag(room) as? UIStackView,
            let label = stackView.viewWithTag(bed) as? UILabel {
            label.backgroundColor = booked ? .green : .red
            label.text = booked ? "Booked" : "Free"
        }
    }
    private func randomString(length: Int) -> String {

        let letters: NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)

        var randomString = ""

        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }

        return randomString
    }
}
