//
//  BaseHttpManager.swift
//
//  Created by Voloshyn Slavik on 9/14/16.
//  Copyright © 2016 Voloshyn Slavik. All rights reserved.
//

import Foundation

class BaseHttpManager: NSObject {

    fileprivate lazy var session: URLSession! = {
        let config  = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        return session
    }()

    func get(_ url: String, completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void))
        -> URLSessionDataTask? {
        return makeRequest(url, method: "GET", completionHandler: completionHandler)
    }

    func makeRequest(_ url: String, method: String,
                     completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void))
        -> URLSessionDataTask? {
        guard let nsurl = URL(string: url) else {
            print("Can't create NSURL object for \(url)")
            return nil
        }

        var request: URLRequest = URLRequest(url: nsurl)
        request.httpMethod = method
        let task = session.dataTask(with: request, completionHandler:completionHandler)
        task.resume()
        return task
    }
}
