//
//  FirstViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 2/28/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit

public var times = ["8:27am", "8:35am", "8:43am", "8:50am", "8:57am"]

public var caddys = ["Sally Preech", "Chaz Michael", "Jimbo", "John Apple", "Mark Fancis", "John Smith", "Rocky Belboa", "Katie Ortell", "Susan Nomm", "Jerry Garcia", "Lea Sasson", "Chung Bair", "Michal Tomasini", "Delfina Wronski", "Genoveva Stjame", "Felipe Goebel", "Carma Kessler", "Karyn Sickler", "Dylan Chancellor", "Ashton Aquilino"]

// caddys needs to fetch from unassigned and ordered the same as taken from unnasigned
public var golfers = ["Jenny Buck", "Jon Do", "Mr. Grinch", "Dr. Doolittle", "Sally Preech", "Chaz Michael", "Jimbo", "Katie Ortell", "Susan Nomm", "Jerry Garcia", "Ashton Aquilino", "Anita Rayner", "Verlim Mcgurt", "Eulalia Kallenbach", "Leda Matheney", "Letty Shelburne", "Fe Meader", "Linnea Ziebarth", "Irmgard Weary", "Vertie Garbarino"]

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // golfers needs to fetch the upcoming golfers list from firebase

   
    @IBOutlet var upcomingView: UITableView!
    
  
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell2 = self.upcomingView.dequeueReusableCellWithIdentifier("upcomingCells", forIndexPath: indexPath) as! CustomCell2
        
        
        cell2.caddy1.text = caddys[indexPath.row * 4]
        cell2.caddy2.text = caddys[(indexPath.row * 4) + 1]
        cell2.caddy3.text = caddys[(indexPath.row * 4) + 2]
        cell2.caddy4.text = caddys[(indexPath.row * 4) + 3]
        
        cell2.golfer1.text = golfers[indexPath.row * 4]
        cell2.golfer2.text = golfers[(indexPath.row * 4) + 1]
        cell2.golfer3.text = golfers[(indexPath.row * 4) + 2]
        cell2.golfer4.text = golfers[(indexPath.row * 4) + 3]
        
        cell2.time.text = times[indexPath.row]
        
       
        
        
        
        return cell2
        
    }
    
    
    
    
    
   // this needs to either remain 5 or get a count for the list of upcoming from firebase
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return times.count;
    }

    
    func appendTable(TeeTime : String, C1 : String, C2 : String, C3 : String, C4 : String, G1 : String, G2 : String, G3 : String, G4 : String) {
        print("check)")
        golfers.append(G1)
        golfers.append(G2)
        golfers.append(G3)
        golfers.append(G4)
        print("check2")
        caddys.append(C1)
        caddys.append(C2)
        caddys.append(C3)
        caddys.append(C4)
        times.append(TeeTime)
        print(times)
        print(golfers)
        print(caddys)
        
       
        
        
        
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

