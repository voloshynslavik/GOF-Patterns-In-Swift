//
//  Facade.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 06/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class Facade {

    private let pxManager = PXManager()

    func downloadImages(count: Int, callback: @escaping (([UIImage]) -> Void)) {
         downloadImages(count: count, pageIndex: 1, callback: callback)
    }

    private func downloadImages(count: Int, pageIndex: Int, callback: @escaping (([UIImage]) -> Void)) {
        var images: [UIImage] = []
        pxManager.getPageWithPhotos(pageIndex) { (page, _) in
            if let page = page {
                DispatchQueue.global(qos: .background).async {
                    for photo in page.photos {
                        if  let nsurl = URL(string: photo.url),
                            let data = try? Data(contentsOf: nsurl),
                            let image  = UIImage(data: data) {
                            images.append(image)
                            if images.count >= count {
                                DispatchQueue.main.async {
                                    callback(images)
                                }
                                return
                            }
                        }
                    }
                    self.downloadImages(count: count - images.count,
                                        pageIndex: pageIndex + 1, callback: { downloadedImages in
                        callback(downloadedImages + images)
                    })
                }
            } else {
                callback(images)
            }
        }
    }

}
