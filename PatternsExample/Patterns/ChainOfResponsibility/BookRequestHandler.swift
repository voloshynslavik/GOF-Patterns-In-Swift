//
//  RoomHandler.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 28/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import Foundation

protocol BookRequestHandler {

    func handle(bookRequest request: BookRequest) -> Bool

}
