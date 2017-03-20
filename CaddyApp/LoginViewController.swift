//
//  LoginViewController.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/6/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//


import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let user = FIRAuth.auth()?.currentUser
        {
            self.emailField.text = user.email
            
            
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
    if let email = emailField.text where email != "", let pwd = passwordField.text where pwd != "" {
        
   
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
    


    
    
}

