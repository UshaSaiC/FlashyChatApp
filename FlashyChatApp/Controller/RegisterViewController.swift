//
//  RegisterViewController.swift
//  FlashyChatApp
//
//  Created by Usha Sai Chintha on 09/09/22.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        // return type of .text is Optional(String), so initially unwrapping them safely via optional chaining
        // adding on we added a comma seperator in if condition stating that if email is not nil.. assign it to email variable and same thing for password and only if both of these conditions don't fail move ahead with if block else no
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            // below line basically uses authentication module of firebase and creates a new user based on email and password details
            // authResult is the users details after successful registration
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let errorValue = error{
                    // localizedDescription method is used to log the error in readable format based on language of app
                    print(errorValue.localizedDescription)
                }
                else{
                    // Navigate to chat view controller
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
                
            }
        }
    }
    
}
