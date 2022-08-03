//
//  MyCoustomButton.swift
//  CalCulated
//
//  Created by A_Z on 11/9/19.
//  Copyright © 2019 A_Z. All rights reserved.
//

import UIKit

class MyCoustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        self.layer.cornerRadius = self.layer.frame.size.height / 2
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }

}
