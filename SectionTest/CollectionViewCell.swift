//
//  CollectionViewCell.swift
//  SectionTest
//
//  Created by Martin Prusa on 8/4/18.
//  Copyright © 2018 Martin Prusa. All rights reserved.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "CollectionCell"

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
}
