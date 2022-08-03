//
//  muneAction.swift
//  CalCulated
//
//  Created by A_Z on 12/11/19.
//  Copyright © 2019 A_Z. All rights reserved.
//

import Foundation

class Redioclass {
    
    var IsMune : Bool = false
    func OpenAndClass()  {
    
        if IsMune {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "HideMune"), object: nil)
            IsMune = false
        }else{
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ShowMune"), object: nil)
            IsMune = true
        }
    }
}
