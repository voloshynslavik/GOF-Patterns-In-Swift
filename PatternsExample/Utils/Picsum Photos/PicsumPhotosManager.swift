//
//  PicsumPhotosManager.swift
//  MVX Patterns In Swift
//
//  Created by Voloshyn Slavik on 5/22/19.
//

import Foundation

final class PicsumPhotosManager: BaseHttpManager {
    
    private let decoder = JSONDecoder()
    
    func getPhotos(_ pageIndex: Int = 1, photoLimits: Int = 50, callback: @escaping ((_ photos: [PicsumPhoto]?, _ error: Error?) -> Void)) {
        let url = "https://picsum.photos/v2/list?page=\(pageIndex)&limit=\(photoLimits)"
        
        self.get(url) { [weak self] (data, _, reguestError) in
            
            var photos: [PicsumPhoto]?
            var decodingError: Error?
            
            defer {
                DispatchQueue.main.async(execute: {
                    callback(photos, reguestError ?? decodingError)
                })
            }
            
            if let data = data {
                do {
                    photos = try self?.decoder.decode([PicsumPhoto].self, from: data)
                } catch let error {
                    decodingError = error
                }
            }
            
        }
    }
    
}
