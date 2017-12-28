//
//  GroupCell.swift
//  coderroom
//
//  Created by adolfo reyes on 12/28/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    @IBOutlet weak var groupDescLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int){
        self.groupTitleLbl.text = title
        self.memberCountLbl.text = "\(memberCount) members"
        self.groupDescLbl.text = description
    }
}
