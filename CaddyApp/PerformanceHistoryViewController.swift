//
//  PerformanceHistoryViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/7/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class PerformanceHistoryViewController: UIViewController {

    @IBOutlet var UserEmail: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let user = FIRAuth.auth()?.currentUser
        {
            self.UserEmail.text = user.email
            
            
            
        }

    }
    
    
    override func viewWillAppear(animated: Bool) {
        // handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            // ...
        }
    
    
    override func viewWillDisappear(animated: Bool) {
      //  FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    



}
