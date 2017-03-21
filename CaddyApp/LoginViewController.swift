//
//  LoginViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/6/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//


import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase


class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var SignOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        if let user = FIRAuth.auth()?.currentUser
        {
            self.emailField.text = user.email
            self.signUpButton.enabled = false
            
            
        }
    
    }
    
    override func viewWillAppear(animated: Bool) {
       // handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
            // ...
        }
    
    
    override func viewWillDisappear(animated: Bool) {
       // FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
   
        FIRAuth.auth()?.signInWithEmail(emailField.text!, password: passwordField.text!, completion: {
            user, error in
            
            if error != nil{
                self.showPreviewAlert("Incorrect Email and Password", msg: "Please enter a valid Email and Password")            }
            else {
               self.performSegueWithIdentifier("GoToTab", sender: nil)
            }
        
        })
        
   
    }
    
    @IBAction func signOutPressed(sender: UIButton) {
        try! FIRAuth.auth()?.signOut()
        
        self.emailField.text = ""
        self.passwordField.text = ""
        self.signUpButton.enabled = true
    }
    
    
    func showPreviewAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }

    
  
    
    
}

