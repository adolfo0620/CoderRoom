//
//  GroupFeedVC.swift
//  coderroom
//
//  Created by adolfo reyes on 12/29/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {


    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindTokeybroard()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
}
