//
//  SegewayviewController.swift
//  CalCulated
//
//  Created by A_Z on 12/11/19.
//  Copyright © 2019 A_Z. All rights reserved.
//

import UIKit
class SegewayviewController : UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        performSegue(withIdentifier: "Main1", sender: nil)
    }
}
