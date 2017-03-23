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
    
    
    var names = ["John Apple", "Mark Fancis", "John Smith", "Rocky Belboa", "Katie Ortell", "Susan Nomm", "Jerry Garcia"]
    
    var nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"]
    
    @IBOutlet var unassignedView: UITableView!
    
   
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.unassignedView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
        cell.caddyName.text = self.names[indexPath.row]
        cell.position.text = self.nums[indexPath.row]
        
        return cell
    }
    
    
   
        
        

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    

    @IBAction func checkInPressed(sender: AnyObject) {
        appendTable()
        
    }

    
    


func appendTable() {
    self.names.append("Charles Cook")
    unassignedView.beginUpdates()
    unassignedView.insertRowsAtIndexPaths([
        NSIndexPath(forRow: self.names.count-1, inSection: 0)
        ], withRowAnimation: .Automatic)
    self.unassignedView.endUpdates()
    
    
}
    
    
}



