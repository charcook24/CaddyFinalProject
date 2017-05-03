//
//  FirstViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 2/28/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // golfers needs to fetch the upcoming golfers list from firebase
    var caddys = ["Sally Preech", "Chaz Michael", "Jimbo", "John Apple", "Mark Fancis", "John Smith", "Rocky Belboa", "Katie Ortell", "Susan Nomm", "Jerry Garcia", "Lea Sasson", "Chung Bair", "Michal Tomasini", "Delfina Wronski", "Genoveva Stjame", "Felipe Goebel", "Carma Kessler", "Karyn Sickler", "Dylan Chancellor", "Felix Boling", "Mendy Calabria", "Thomasine Mroz", "Bo Oxley", "Kimberlee Fritsche", "Robbin Grout", "Dorthy Truesdale", "Saturnina Wattenbarger", "Dianna Kantz", "Samatha Hasty", "Alanna Mcmullan"]
    
    // caddys needs to fetch from unassigned and ordered the same as taken from unnasigned
    var golfers = ["Jenny Buck", "Jon Do", "Mr. Grinch", "Dr. Doolittle", "Sally Preech", "Chaz Michael", "Jimbo", "Katie Ortell", "Susan Nomm", "Jerry Garcia", "Ashton Aquilino", "Anita Rayner", "Verlim Mcgurt", "Eulalia Kallenbach", "Leda Matheney", "Letty Shelburne", "Fe Meader", "Linnea Ziebarth", "Irmgard Weary", "Vertie Garbarino", "Davina Sidwell", "Adelia Brinkley", "Terese Broe", "Meda Chartier", "Floretta Jessee", "Mertie Rames", "Jacqui Mansur", "Nicolette Twellman", "Ellena Gameros", "Chauncey Nailor", "Duane Pettiway", "Nila Grimm", "Adrianna Wiese", "Ethel Loose", "Janiece Arias", "Etha Redwine", "Slyvia Hudson", "Bryan Turrentine", "Nidia Nebeker", "Milda Dilley"]
    
    var times = ["8:27am", "8:35am", "8:43am", "8:50am", "8:57am", "9:04am", "9:11am", "9:18am", "9:25am", "9:32am", "9:39am", "9:46am", "9:53am", "10:00am", "10:07am", "10:14am", "10:21am", "10:28am"]

    
    var count = 2
   
    @IBOutlet var upcomingView: UITableView!
    
    func appendTable() {
    
        upcomingView.beginUpdates()
        upcomingView.insertRowsAtIndexPaths([
            NSIndexPath(forRow: count-1, inSection: 0)
            ], withRowAnimation: .Automatic)
        self.upcomingView.endUpdates()
        count = count-1
        
        
        
    }

    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell2 = self.upcomingView.dequeueReusableCellWithIdentifier("upcomingCells", forIndexPath: indexPath) as! CustomCell2
        var index = indexPath.row * 4
        
        cell2.caddy1.text = self.caddys[index]
        cell2.caddy2.text = self.caddys[index + 1]
        cell2.caddy3.text = self.caddys[index + 2]
        cell2.caddy4.text = self.caddys[index + 3]
        
        cell2.golfer1.text = self.golfers[index]
        cell2.golfer2.text = self.golfers[index + 1]
        cell2.golfer3.text = self.golfers[index + 2]
        cell2.golfer4.text = self.golfers[index + 3]
        
        cell2.time.text = self.times[indexPath.row]
        
       
        
        
        
        return cell2
        
    }
    
    
    
    
    
   // this needs to either remain 5 or get a count for the list of upcoming from firebase
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
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

