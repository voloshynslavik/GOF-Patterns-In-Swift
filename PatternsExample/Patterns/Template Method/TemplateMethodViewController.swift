//
//  TemplateMethodViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 13/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class TemplateMethodViewController: UIViewController {

    @IBOutlet weak var imageInfoLabel: UILabel!
    @IBOutlet weak var audioInfoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let photo = ImageFile(name: "My birthday 25", fileExtension: "jpg")
        let sound = AudioFile(name: "ATB - Ecstasy", fileExtension: "mp3")

        update(label: imageInfoLabel, withFile: photo)
        update(label: audioInfoLabel, withFile: sound)
    }

    private func update(label: UILabel, withFile file: File) {
        label.text = file.getDetailsInfo()
    }

}
