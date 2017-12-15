//
//  ShadowVIew.swift
//  coderroom
//
//  Created by adolfo reyes on 12/14/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class ShadowVIew: UIView {
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }
}
