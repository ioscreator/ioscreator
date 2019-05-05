//
//  CollectionViewCell.swift
//  IOSDeleteItemsCollectionViewTutorial
//
//  Created by Arthur Knopper on 25/04/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var checkmarkLabel: UILabel!
    
    var isInEditingMode: Bool = false {
        didSet {
            checkmarkLabel.isHidden = !isInEditingMode
        }
    }
    
    override var isSelected: Bool {
        didSet {
            if isInEditingMode {
                checkmarkLabel.text = isSelected ? "✓" : ""
            }
        }
    }
    
}
