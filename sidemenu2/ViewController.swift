//
//  ViewController.swift
//  sidemenu2
//
//  Created by Amira on 10/19/20.
//  Copyright © 2020 Amira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func menubtn(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ismenu"), object: nil)
        
        
    }
    
    
    
    
}

