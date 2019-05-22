//
//  Facade.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 06/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class Facade {

    private let picsumPhotos = PicsumPhotosManager()

    func downloadImages(count: Int, callback: @escaping (([UIImage]) -> Void)) {
         downloadImages(count: count, pageIndex: 1, callback: callback)
    }

    private func downloadImages(count: Int, pageIndex: Int, callback: @escaping (([UIImage]) -> Void)) {
        var images: [UIImage] = []
        picsumPhotos.getPhotos(pageIndex) { (photos, _) in
            if let photos = photos {
                DispatchQueue.global(qos: .background).async {
                    for photo in photos {
                        if  let nsurl = URL(string: photo.getResizedImageURL(width: 100, height: 100)),
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
