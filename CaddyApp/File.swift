//
//  File.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/23/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet var caddyName: UILabel!
    @IBOutlet var position: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}