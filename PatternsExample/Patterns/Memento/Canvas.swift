//
//  Canvas.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 07/03/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class Canvas {

    var didStartMoveEntity: (() -> Void)?

    fileprivate let view: UIView
    fileprivate var entities: [UIView] = []

    fileprivate var canBeSaved = true

    init(view: UIView) {
        self.view = view
    }
}

extension Canvas {

    @objc (handlePan:)
    private func handlePan(_ gesture: UIPanGestureRecognizer) {
        guard let gestureView = gesture.view else {
            return
        }

        if gesture.state == .began {
           didStartMoveEntity?()
        }

        let translation = gesture.translation(in: self.view)
        gestureView.center = CGPoint(x: gestureView.center.x + translation.x,
                                     y: gestureView.center.y + translation.y)
        gesture.setTranslation(CGPoint.zero, in: self.view)

        canBeSaved = true
    }

    func addEntity(with rect: CGRect, and color: UIColor) {
        let entity = UIView(frame: rect)
        entity.backgroundColor = color
        entity.isUserInteractionEnabled = true
        entity.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(Canvas.handlePan(_:))))

        view.addSubview(entity)
        entities.append(entity)
    }

}

// MARK: memnto implementation

extension Canvas {

    func save() -> Memento? {
        if !canBeSaved {
            return nil
        }
        canBeSaved = false
        let memento = Memento()
        for entity in entities {
          memento.put(rect: entity.frame, color: entity.backgroundColor)
        }
        return memento
    }

    func restore(with memento: Memento) {
      canBeSaved = false
      for (index, entity) in entities.enumerated() {
        if let data = memento.get(with: index) {
            entity.frame = data.rect
            entity.backgroundColor = data.color
        }
      }
    }
}
