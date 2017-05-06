//
//  SetTeeVC.swift
//  CaddyApp
//
//  Created by Charles Cook on 5/3/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//
import UIKit
import Firebase
import FirebaseAuth




class SetTeeVC: UIViewController {
    
 

    
    @IBOutlet var Golfer1: UITextField!
    @IBOutlet var Golfer2: UITextField!
    @IBOutlet var Golfer3: UITextField!
    @IBOutlet var Golfer4: UITextField!
    
    @IBOutlet var TeeTime: UITextField!
    
    @IBOutlet var Caddy1: UITextField!
    @IBOutlet var Caddy2: UITextField!
    @IBOutlet var Caddy3: UITextField!
    @IBOutlet var Caddy4: UITextField!
   

    @IBOutlet var Save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        //   handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
        // ...
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        //    FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    
    func showPreviewAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func SavePressed(sender: AnyObject) {
       
        
        
        
        
            
            
        let teeTime : String = self.TeeTime.text!
        let C1 : String = self.Caddy1.text!
        let C2 : String = self.Caddy2.text!
        let C3 : String = self.Caddy3.text!
        let C4 : String = self.Caddy4.text!
            
        let G1 : String = self.Golfer1.text!
        let G2 : String = self.Golfer2.text!
        let G3 : String = self.Golfer3.text!
        let G4 : String = self.Golfer4.text!
        
        let upcoming = FirstViewController()
        upcoming.appendTable(teeTime, C1: C1, C2: C2, C3: C3, C4: C4, G1: G1, G2: G2, G3: G3, G4: G4)
                             
        let Caddys = [self.Caddy1.text, self.Caddy2.text, self.Caddy3.text, self.Caddy4.text]

        
            let loop1 : [String : AnyObject] = ["tee time" : teeTime]
                                
            
            
        
            let databaseref = FIRDatabase.database().reference()
        
            databaseref.child("loops").childByAutoId().setValue(loop1)
        
            let unassigned = SecondViewController()
        
        for var i = 0; i < Caddys.count; i++ {
            print(names6)
            if unassigned.checkName(Caddys[i]!) == true {
                unassigned.removeName(Caddys[i]!)
                print(names6)
            }
            
    
            
        }
        
        self.showPreviewAlert("Successs", msg: "Tee Time has been added to the Upcoming List")
        
    }

    
        

        
    
    
}
    


