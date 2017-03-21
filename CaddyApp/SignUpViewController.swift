//
//  SignUpViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/20/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var clubID: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var titleText: UILabel!
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        if  let user = FIRAuth.auth()?.currentUser {
            self.titleText.text = "Already Signed Up. Please Login"
            self.titleText.textColor = UIColor.redColor()
        
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func backToSignIn(sender: AnyObject) {
        
        performSegueWithIdentifier("backToSignIn", sender: nil)

    }
   
    @IBAction func signUp(sender: AnyObject) {
        if let email = emailField.text where email != "", let pwd = passwordField.text where pwd != "", let nme = nameField.text where nme != "",  let clubNum = clubID.text where clubNum != "" {
            
            FIRAuth.auth()?.createUserWithEmail(self.emailField.text!, password: self.passwordField.text!, completion: { (user, error) in
                
                if error == nil{
                    
                    self.caddy()
                    
                    self.showLoginAlert("Successfully Created An Account", msg: "Please Sign In")
                    
                }
            })
            
        } else {
            showErrorAlert("All fields must be filled", msg: "Please fill in all of the fields shown")
            }
    }
    
    func showErrorAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
       
    func showLoginAlert(title: String, msg: String) {
            let alert = UIAlertController(title: title, message: msg, preferredStyle: .Alert)
            let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(action)
            presentViewController(alert, animated: true, completion: nil)
        }
    
    func caddy(){
        let name = self.nameField.text
        let rank = "rank"
        let rating = 0
        let clubID = self.clubID.text
        let email = self.emailField.text
        
        let caddy : [String : AnyObject] = ["Name" : name!,
                                            "rank" : rank,
                                            "rating" : rating,
                                            "clubID" : clubID!,
                                            "email" : email!]
        
        let databaseRef = FIRDatabase.database().reference()
        
        databaseRef.child("Caddys").childByAutoId().setValue(caddy)
        

    }

    

    
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        //  handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
        // ...
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        //FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    
    
    
    
    
    
}
