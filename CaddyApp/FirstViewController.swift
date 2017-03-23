//
//  FirstViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 2/28/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var golfers = ["Sally Preech", "Chaz Michael", "Jimbo", "John Apple", "Mark Fancis", "John Smith", "Rocky Belboa", "Katie Ortell", "Susan Nomm", "Jerry Garcia"]
    var caddys = ["Jenny Buck", "Jon Do", "Mr. Grinch", "Dr. Doolittle", "Sally Preech", "Chaz Michael", "Jimbo", "Katie Ortell", "Susan Nomm", "Jerry Garcia"]
   
    @IBOutlet var upcomingView: UITableView!
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell2 = self.upcomingView.dequeueReusableCellWithIdentifier("upcomingCells", forIndexPath: indexPath) as! CustomCell2
        cell2.caddy1.text = self.caddys[0]
        cell2.caddy2.text = self.caddys[1]
        cell2.caddy3.text = self.caddys[2]
        cell2.caddy4.text = self.caddys[3]
        
        cell2.golfer1.text = self.golfers[0]
        cell2.golfer2.text = self.golfers[1]
        cell2.golfer3.text = self.golfers[2]
        cell2.golfer4.text = self.golfers[3]
        
        cell2.time.text = "9:30am"
        
        
        
        return cell2
    }
    
    
    
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
      //  handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            // ...
        }
    
    
    override func viewWillDisappear(animated: Bool) {
        //FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    


    
   

}

