//
//  LoginVC.swift
//  coderroom
//
//  Created by adolfo reyes on 12/14/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    @IBAction func siginBtnWasPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginCreationComplete: { (success, loginError) in
                if success{
                    self.dismiss(animated: true, completion: nil)
                }else{
                    debugPrint(loginError?.localizedDescription as Any)
                }
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registerationError) in
                    if success {
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginCreationComplete: { (success, nil) in
                            self.dismiss(animated: true, completion: nil)
                            print("Successfully registered user")
                        })
                    }else{
                        debugPrint(registerationError?.localizedDescription as Any)
                    }
                })
            })
        }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: UITextFieldDelegate{
    
}
