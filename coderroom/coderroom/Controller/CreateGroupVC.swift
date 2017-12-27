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
    
    var emailArray = [String]()
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        emailTextField.delegate = self
        emailTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        super.viewDidLoad()
    }
    
    @objc func textFieldDidChange(){
        if emailTextField.text == "" {
            emailArray = []
            tableView.reloadData()
        }else{
            DataService.instance.getEamil(forSearchQuery: emailTextField.text!, handler: { (returnEmailArray) in
                self.emailArray = returnEmailArray
                self.tableView.reloadData()
            })
        }
    }

    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
    
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension CreateGroupVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserCell else { return UITableViewCell() }
        let profileImage = UIImage(named: "defaultProfileImage")
        cell.configureCell(profileImage: profileImage!, email: emailArray[indexPath.row], isSelected: true)
        return cell
    }
}


extension CreateGroupVC: UITextFieldDelegate{
    
}
