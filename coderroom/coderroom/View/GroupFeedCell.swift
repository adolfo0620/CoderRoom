//
//  GroupFeedCell.swift
//  coderroom
//
//  Created by adolfo reyes on 12/29/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {
    
    @IBOutlet weak var contentLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    
    func configureCell(profileImage: UIImage, email: String, content: String){
        self.profileImg.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
}
