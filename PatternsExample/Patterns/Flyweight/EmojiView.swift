//
//  CanvasView.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 15/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

private let emojiList = ["emoji-crying",
                         "emoji-happy",
                         "emoji-nerd",
                         "emoji-shocked",
                         "emoji-sick",
                         "emoji-suspicious"]

final class EmojiView: UIView {

    private var flyweightFactory = FlyweightFactory()
    private var objects: [(id: String, point: CGPoint)] = []

    func drawNewEmoji() {
        let randomN = Int(arc4random_uniform(UInt32(emojiList.count)))
        let randomEmoji = emojiList[randomN]
        let randomPoint = CGPoint(x: Int(arc4random_uniform(UInt32(frame.size.width))),
                                  y: Int(arc4random_uniform(UInt32(frame.size.height))))
        objects.append((randomEmoji, randomPoint))
        setNeedsDisplay()
    }

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            for item in objects {
                let drawable = flyweightFactory.getDrawable(type: DrawableImage.self, id: item.id)
                drawable.draw(at: item.point, context: context)
            }
        }
    }
}
