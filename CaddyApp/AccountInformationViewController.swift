//
//  AccountInformationViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/7/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit
import Firebase

class AccountInformationViewController: UIViewController {

    @IBOutlet var Name: UILabel!
    @IBOutlet var Email: UILabel!
    @IBOutlet var ClubID: UILabel!
    @IBOutlet var UserName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let databaseref = FIRDatabase.database().reference()
        
        databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("Name").observeSingleEventOfType(.Value, withBlock: { FIRDataSnapshot in
            let names2 = FIRDataSnapshot.value!
            self.Name.text = names2.debugDescription
            self.UserName.text = names2.debugDescription
        }  )
        
        databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("ClubId").observeSingleEventOfType(.Value, withBlock: { FIRDataSnapshot in
            let club = FIRDataSnapshot.value!
            self.ClubID.text = club.debugDescription
        }  )
        
        databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("email").observeSingleEventOfType(.Value, withBlock: { FIRDataSnapshot in
            let email = FIRDataSnapshot.value!
            self.Email.text = email.debugDescription
        }  )



        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(animated: Bool) {
       // handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            // ...
        }

    override func viewWillDisappear(animated: Bool) {
       // FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    


}



