//
//  CollectionViewController.swift
//  SectionTest
//
//  Created by Martin Prusa on 8/4/18.
//  Copyright © 2018 Martin Prusa. All rights reserved.
//

import UIKit

final class CollectionViewController: UICollectionViewController {

    private let dataModel = [["section1-item1","section1-item2","section1-item3"],["section2-item1","section2-item2","section2-item3"],["section3-item1","section3-item2","section3-item3"],["section4-item1","section4-item2","section4-item3"],["section5-item1","section5-item2","section5-item3"],["section6-item1","section6-item2","section6-item3"],["section7-item1","section7-item2","section7-item3"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataModel.count
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel[section].count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuseIdentifier, for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }

        let text = dataModel[indexPath.section][indexPath.row]
        cell.label.text = text
        
        cell.imageView.isHidden = !displayImage(on: indexPath)
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 80)
    }
    
    private func displayImage(on indexPath: IndexPath) -> Bool {
        if indexPath.section == 0 {
            return false
        }
        
        if (indexPath.section + 1) == dataModel.count {
            return false
        }
        
        return true
    }
}
