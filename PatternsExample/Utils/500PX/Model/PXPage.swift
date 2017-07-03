//
//  PXPage.swift
//
//  Created by Voloshyn Slavik on 9/14/16.
//  Copyright © 2016 Voloshyn Slavik. All rights reserved.
//

struct PXPage {
    let index: Int
    let totalPages: Int
    let totalItems: Int
    let feature: String
    var photos: [PXPhoto] = []

    init(index: Int, totalPages: Int, totalItems: Int, feature: String, photos: [PXPhoto] = []) {
        self.index      = index
        self.totalPages = totalPages
        self.totalItems = totalItems
        self.feature    = feature
        self.photos     = photos
    }
}
