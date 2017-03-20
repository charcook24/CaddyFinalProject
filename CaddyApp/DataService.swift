//
//  DataService.swift
//  CaddyApp
//
//  Created by Charles Cook on 3/19/17.
//  Copyright © 2017 Charles Cook. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: "https://console.firebase.google.com/project/caddyshack-67403")
    
    var REF_BASE: Firebase {
    return _REF_BASE
    }
    
}

