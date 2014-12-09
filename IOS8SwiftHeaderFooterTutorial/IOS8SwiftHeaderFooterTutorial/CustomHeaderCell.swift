//
//  CustomHeaderCell.swift
//  IOS8SwiftHeaderFooterTutorial
//
//  Created by Arthur Knopper on 09/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class CustomHeaderCell: UITableViewCell {
  @IBOutlet var headerLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
