//
//  SecondViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 2/28/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth


class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var unassignedView: UITableView!
    
    
       
    
    
    
    var names = ["John Apple", "Mark Fancis", "John Smith", "Rocky Belboa"]
    var nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.unassignedView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        cell.caddyName.text = self.names[indexPath.row]
        cell.position.text = self.nums[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }


    
    
}



