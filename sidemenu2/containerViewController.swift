//
//  containerViewController.swift
//  sidemenu2
//
//  Created by Amira on 10/19/20.
//  Copyright © 2020 Amira. All rights reserved.
//

import UIKit

class containerViewController: UIViewController {

  
    
    @IBOutlet weak var bottomconstrain: NSLayoutConstraint!
    
    
    @IBOutlet weak var topconstrain: NSLayoutConstraint!
    
    
    @IBOutlet weak var midconstrain: NSLayoutConstraint!
    
    @IBOutlet weak var menu: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(self.domenu), name: NSNotification.Name(rawValue: "ismenu"), object: nil)
        
    }
    

    @objc func domenu(){
      
        UIView.animate(withDuration: 2) {
                   
            if self.midconstrain.constant==0{
                self.midconstrain.constant =
                
                    self.menu.frame.width
                self.topconstrain.constant = 100
                self.bottomconstrain.constant = 100
                
            }else{
                self.midconstrain.constant = 0
                self.bottomconstrain.constant = 0
                self.topconstrain.constant = 0
                
            }
            
            self.view.layoutIfNeeded()
            
            
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
}
