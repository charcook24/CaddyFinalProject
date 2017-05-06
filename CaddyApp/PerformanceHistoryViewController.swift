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

    @IBOutlet var UserName: UILabel!
    @IBOutlet var Rank: UILabel!
    @IBOutlet var Rating: UILabel!
    @IBOutlet var Comments: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
            
            let databaseref = FIRDatabase.database().reference()
            
            databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("Name").observeSingleEventOfType(.Value, withBlock: { FIRDataSnapshot in
                let names2 = FIRDataSnapshot.value!
                self.UserName.text = names2.debugDescription
            }  )
            databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("rank").observeSingleEventOfType(.Value, withBlock: { FIRDataSnapshot in
                let rank = FIRDataSnapshot.value!
                self.Rank.text = rank.debugDescription
            }  )
            databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("rating").observeSingleEventOfType(.Value, withBlock: { FIRDataSnapshot in
                let rating = FIRDataSnapshot.value!
                self.Rating.text = rating.debugDescription
            }  )
            databaseref.child("users").child("Caddys").child((FIRAuth.auth()!.currentUser!.uid)).child("comments").observeSingleEventOfType(.Value, withBlock: { FIRDataSnapshot in
                let comment = FIRDataSnapshot.value!
                self.Comments.text = comment.debugDescription
            }  )



            

            
        

    }
    
    
    override func viewWillAppear(animated: Bool) {
        // handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            // ...
        }
    
    
    override func viewWillDisappear(animated: Bool) {
      //  FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    



}
