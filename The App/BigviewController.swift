//
//  BigviewController.swift
//  CalCulated
//
//  Created by A_Z on 12/12/19.
//  Copyright © 2019 A_Z. All rights reserved.
//

import UIKit

class BigviewController : UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(BigviewController.HideMune), name: NSNotification.Name(rawValue: "HideMune"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(BigviewController.ShowMune), name: NSNotification.Name(rawValue: "ShowMune"), object: nil)
    }
    
    @IBOutlet weak var SideMuneLayoutt: NSLayoutConstraint!
    
    @objc func HideMune() {
        SideMuneLayoutt.constant=0
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    @objc func ShowMune() {
        SideMuneLayoutt.constant = self.view.frame.size.width * 0.7
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
}
