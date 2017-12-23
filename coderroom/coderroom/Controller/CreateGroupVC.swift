//
//  CreateGroupVC.swift
//  coderroom
//
//  Created by adolfo reyes on 12/22/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class CreateGroupVC: UIViewController {

    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailTextField: InsetTextField!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
    
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
    }
}
