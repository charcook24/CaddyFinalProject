//
//  EditUnassignedView.swift
//  CaddyApp
//
//  Created by Charles Cook on 5/4/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import Foundation
import UIKit

class EditUnassignedView: UIViewController {

var Index = 0

@IBOutlet var nameAdd: UITextField!
@IBOutlet var numAdd: UITextField!
@IBOutlet var nameRemove: UITextField!
@IBOutlet var numRemove: UITextField!

@IBAction func AddToList(sender: AnyObject) {
    if nameAdd.text != "" && numAdd.text != "" {
        Index = Int(numAdd.text!)!
        let name = nameAdd.text
        let view = SecondViewController()
        view.addName(name!, Pos: Index)
    }
}

@IBAction func RemoveFrom(sender: AnyObject) {
    if nameRemove.text != "" {
        let name = nameRemove.text
        let view = SecondViewController()
        view.removeName(name!)
        
    }
}



}
