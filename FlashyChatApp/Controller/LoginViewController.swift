//
//  LoginViewController.swift
//  FlashyChatApp
//
//  Created by Usha Sai Chintha on 09/09/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let errorValue = error{
                    print(errorValue.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
    
}
