//
//  SignUpViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/20/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var clubID: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var titleText: UILabel!
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        if  let user = FIRAuth.auth()?.currentUser {
            self.titleText.text = "Already SIgned Up. Please Login"
            self.titleText.textColor = UIColor.redColor()
        
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    @IBAction func signUp(sender: AnyObject) {
        if let email = emailField.text where email != "", let pwd = passwordField.text where pwd != "" {
            
            FIRAuth.auth()?.createUserWithEmail(self.emailField.text!, password: self.passwordField.text!, completion: { (user, error) in
                if error == nil{
                    self.showLoginAlert("Successfully Created An Account", msg: "Please restart the application")
                    
                }
            })
            
        } else {
            showErrorAlert("Email and Password Required", msg: "Please enter an email and password")
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

    

        
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        //  handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
        // ...
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        //FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    
    
    
    
    
    
}
