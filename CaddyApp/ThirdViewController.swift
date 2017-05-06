//
//  ThirdViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/1/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//


import UIKit
import Firebase


class ThirdViewController: UIViewController {
    //
    @IBOutlet var CaddyHub: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var user = FIRAuth.auth()?.currentUser?.uid
        
            if user == "1ypXZoiknOObdmOwK81LsF0yRW52" {
                CaddyHub.enabled = true
                CaddyHub.hidden = false
                
            }
            
            
            
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(animated: Bool) {
       // handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            // ...
        }
    
    
    override func viewWillDisappear(animated: Bool) {
       // FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    
    @IBAction func SignOut(sender: AnyObject) {
         
        
    }

}
