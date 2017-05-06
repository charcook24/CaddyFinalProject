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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        var name1 = FIRAuth.auth()?.currentUser?.uid
        print(name1!)
            
            
            
            
        
        
        
        let databaseref = FIRDatabase.database().reference()
        databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("Name").observeSingleEventOfType(.Value, withBlock: { FIRDataSnapshot in
            let names2 = FIRDataSnapshot.value!
            self.Name.text = names2.debugDescription
            }  )
        var num = databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("loops").queryOrderedByKey()
        print(num)
        
        // need to fetch data for pay history
        

        
    
        
               self.avgPay.text = "$156.56"
        self.loops.text = "5"
        self.totalPay.text = "$859"
        
        
        
        
        
            

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
