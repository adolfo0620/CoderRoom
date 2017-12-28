//
//  GroupsVC.swift
//  coderroom
//
//  Created by adolfo reyes on 12/12/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class GroupsVC: UIViewController {

    @IBOutlet weak var groupsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableView.delegate = self
        groupsTableView.dataSource = self
    }
}

extension GroupsVC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =  tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as? GroupCell else {
            return UITableViewCell()
        }
        cell.configureCell(title: "Test", description: "test", memberCount: 3)
        return cell
    }
}

