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

let id = FIRAuth.auth()?.currentUser?.uid
let rootRef = FIRDatabase.database().reference()



class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //names needs to pull from the unnassigned list
    var names = ["John Apple", "Mark Fancis", "John Smith", "Rocky Belboa", "Katie Ortell", "Susan Nomm", "Jerry Garcia"]
    
    var nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"]
    
    @IBOutlet var unassignedView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.unassignedView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
        cell.caddyName.text = self.names[indexPath.row]
        cell.position.text = self.nums[indexPath.row]
        
        return cell
    }
    
    
   
        
        

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    @IBOutlet var CheckOut: UIButton!
    @IBOutlet var Check: UIButton!
    
// needs to dd the current user to the unnasigned list
    
    @IBAction func checkInPressed(sender: AnyObject) {
    
        CheckOut.hidden = false
        CheckOut.enabled = true
        Check.hidden = true
        Check.enabled = false
        appendTable()
        
        
                }
    
    
    @IBAction func checkOutPressed(sender: AnyObject) {
        Check.hidden = false
        Check.enabled = true
        CheckOut.hidden = true
        CheckOut.enabled = false
        remove()
        
    }
        
    
        
    func remove() {
        var new = names.count
        self.names.removeLast()
        print(self.names)
        unassignedView.beginUpdates()
        unassignedView.deleteRowsAtIndexPaths([
            NSIndexPath(forRow: self.names.count, inSection: 0)
            ], withRowAnimation: .Automatic)
        self.unassignedView.endUpdates()
        
    }
    
    func checkName(Name: String) -> Bool {
        if names.contains(Name)
        {
        return true
        }
        else {
            return false
        }
    }
    
    func removeName(Name: String) {
        if let index = names.indexOf(Name) {
            names.removeAtIndex(index)
        }
        

    }
    


    func appendTable() {
        
            
    self.names.append("Charles Cook")
    print(self.names)
    unassignedView.beginUpdates()
    unassignedView.insertRowsAtIndexPaths([
        NSIndexPath(forRow: self.names.count-1, inSection: 0)
        ], withRowAnimation: .Automatic)
    self.unassignedView.endUpdates()
       
    
    
    
}
    
    
}



