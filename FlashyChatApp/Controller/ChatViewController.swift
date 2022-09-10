//
//  ChatViewController.swift
//  FlashyChatApp
//
//  Created by Usha Sai Chintha on 09/09/22.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.appName
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    

    // for logout instead of normal button we created a bar button so that it can reside in navigation view of screen. Its functionality is mostly same as that of a normal button
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
        
        // a do-catch block is used as logout might throw an error
    do {
      try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
      
    }
}
