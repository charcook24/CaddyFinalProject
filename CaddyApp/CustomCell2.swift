//
//  CustomCell2.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/23/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//


import UIKit

class CustomCell2: UITableViewCell {
    
 
    @IBOutlet var time: UILabel!
   
  
    @IBOutlet var golfer1: UILabel!
    @IBOutlet var golfer2: UILabel!
    @IBOutlet var golfer3: UILabel!
    @IBOutlet var golfer4: UILabel!
    
    @IBOutlet var caddy1: UILabel!
    @IBOutlet var caddy2: UILabel!
    @IBOutlet var caddy3: UILabel!
    @IBOutlet var caddy4: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}
