//
//  QCell.swift
//  myTableView
//
//  Created by Martin Brunner on 02.12.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit

class QCell: UITableViewCell {

    @IBOutlet weak var questionTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
