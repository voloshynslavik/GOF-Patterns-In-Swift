//
//  SingletonFirstEmbededViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 06/06/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class SingletonFirstEmbededViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = Singleton.sharedInstance.image
    }

}
