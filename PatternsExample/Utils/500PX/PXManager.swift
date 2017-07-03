//
//  PXManager.swift
//
//  Created by Voloshyn Slavik on 9/14/16.
//  Copyright © 2016 Voloshyn Slavik. All rights reserved.
//

import Foundation

final class PXManager: BaseHttpManager {
    let consumerKey: String

    override convenience init() {
        self.init(consumerKey:"3H6TjBLDdI4CB99FDfZXxoMvAa5XEWyGhnsE3N9S")
    }

    init(consumerKey: String) {
        self.consumerKey = consumerKey
    }

    func getPageWithPhotos(_ pageIndex: Int = 1, callback: @escaping ((_ page: PXPage?, _ error: Error?) -> Void)) {
        let url = "https://api.500px.com/v1/photos?feature=popular&consumer_key=\(consumerKey)&page=\(pageIndex)"
        _ = self.get(url) { (data, _, error) in
            var page: PXPage?
            if let data = data {
                   do {
                    if let jsonResult = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        page = self.parsePage(jsonResult)
                    }
                   } catch {
                    print("Can't convert nsdata into nsdictionary")
                }
                }
                DispatchQueue.main.async(execute: {
                    callback(page, error)
                })
            }
    }

    fileprivate func parsePage(_ dictionary: [String: Any]) -> PXPage? {
        guard let index = dictionary["current_page"] as? Int,
            let totalPages = dictionary["current_page"] as? Int,
            let feature = dictionary["feature"] as? String,
            let totalItems = dictionary["total_items"] as? Int else {
                print("Can't crate PXPage object. Server returns incorrect data!")
                return nil
        }

        var page = PXPage(index: index, totalPages: totalPages, totalItems: totalItems, feature: feature)
        if let photos = dictionary["photos"] as? [[String: Any]] {
            for photo in photos {
                if let id = photo["id"] as? Int,
                    let name = photo["name"] as? String,
                    let url = photo["image_url"] as? String {
                    let p = PXPhoto(id: id, name: name, url: url)
                    page.photos.append(p)
                }
            }
        }
        return page
    }
}
