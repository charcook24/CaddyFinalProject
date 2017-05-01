//
//  PaymentHistoryViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/7/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class PaymentHistoryViewController: UIViewController {
    //
    
    
    
    @IBOutlet var Name: UILabel!
    
    @IBOutlet var loops: UILabel!
    @IBOutlet var totalPay: UILabel!
    @IBOutlet var avgPay: UILabel!
    @IBOutlet var wage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        if let user = FIRAuth.auth()?.currentUser
        {
            self.Name.text = user.email
            
            
            
        }
        self.avgPay.text = "$156.56"
        self.loops.text = "16"
        self.totalPay.text = "$1,459"
        self.wage.text = "$16.79/hr"
        
        
        
        
            

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(animated: Bool) {
     //   handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            // ...
        }
    
    
    override func viewWillDisappear(animated: Bool) {
    //    FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    


}
