//
//  CustomCell.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/23/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var caddyName: UILabel!
    @IBOutlet weak var listNum: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
