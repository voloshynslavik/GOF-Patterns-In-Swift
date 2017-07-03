//
//  FacadeViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 06/05/2017.
//  Copyright © 2017 voloshynslavik. All rights reserved.
//

import UIKit

final class FacadeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    fileprivate let countCells = 21
    fileprivate var images: [UIImage] = [] {
        didSet {
            collectionView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let facade = Facade()
        facade.downloadImages(count: countCells) { (images) in
            self.images = images
        }
    }

}

extension FacadeViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "image_cell", for: indexPath)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countCells
    }
}

extension FacadeViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let countOfCollumns: CGFloat = 3
        let widthCollectionView = collectionView.frame.width
        let widthCell = (widthCollectionView - (countOfCollumns - 1.0))/countOfCollumns
        return CGSize(width: widthCell, height: widthCell)
    }

    func collectionView(_ collectionView: UICollectionView,
                        willDisplay cell: UICollectionViewCell,
                        forItemAt indexPath: IndexPath) {
        if let imageCell = cell as? ImageCollectionViewCell {
                imageCell.imageView.image = images.indices.contains(indexPath.row) ? images[indexPath.row] : nil
        }
    }
}
