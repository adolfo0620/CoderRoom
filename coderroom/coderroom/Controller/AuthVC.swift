//
//  AuthVC.swift
//  coderroom
//
//  Created by adolfo reyes on 12/14/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    @IBAction func siginWIthEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func siginWIthGoogleBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func siginWIthFacebookBtnWasPressed(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }
    


}
