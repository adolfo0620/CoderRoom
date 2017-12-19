//
//  FeedCell.swift
//  coderroom
//
//  Created by adolfo reyes on 12/18/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var ContentLbl: UILabel!
    
    func configCell(profileImage: UIImage, email: String, content: String){
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.ContentLbl.text = content
    }
}
