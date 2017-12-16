//
//  MeVC.swift
//  coderroom
//
//  Created by adolfo reyes on 12/15/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class MeVC: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signoutBtnWasPressed(_ sender: Any) {
    }
}
