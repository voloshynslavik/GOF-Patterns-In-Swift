//
//  BookRequest.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 28/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import Foundation

struct BookRequest {

    public let nightsCount: Int
    public let personName: String
    public let didCheckedInCallBack: ((BedInRoom) -> Void)
    public let didCheckedOutCallBack: ((BedInRoom) -> Void)
}
