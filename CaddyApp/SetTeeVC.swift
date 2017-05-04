//
//  SetTeeVC.swift
//  CaddyApp
//
//  Created by Charles Cook on 5/3/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//
import UIKit
import Firebase
import FirebaseAuth




class SetTeeVC: UIViewController {
    
 

    
    @IBOutlet var Golfer1: UITextField!
    @IBOutlet var Golfer2: UITextField!
    @IBOutlet var Golfer3: UITextField!
    @IBOutlet var Golfer4: UITextField!
    
    @IBOutlet var TeeTime: UITextField!
    
    @IBOutlet var Caddy1: UITextField!
    @IBOutlet var Caddy2: UITextField!
    @IBOutlet var Caddy3: UITextField!
    @IBOutlet var Caddy4: UITextField!
   

    @IBOutlet var Save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        //   handle = FIRAuth.auth()?.addStateDidChangeListener() { (auth, user) in
        // ...
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        //    FIRAuth.auth()?.removeStateDidChangeListener(handle!)
    }
    
    @IBAction func SavePressed(sender: AnyObject) {
        var view = SecondViewController()
        view.removeName(Caddy1.text!)
    
    }
    
    
}
