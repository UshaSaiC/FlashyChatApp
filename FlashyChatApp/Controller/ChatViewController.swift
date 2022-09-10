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
    
    var messages: [Message] = [
    Message(sender: "1@2.com", body: "Hey!"),
    Message(sender: "a@b.com", body: "Hiii!"),
    Message(sender: "1@2.com", body: "How are you...ldkwfjhnsdaml;qdkfjdsmlq;fkjngvdlsma;dkfgjdhsmlwfkjghbsdnskqwlefhsjdkldjfhbc")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // tableView.delegate = self
        title = K.appName
        navigationItem.hidesBackButton = true
        
        // nibName must be the file name where the design is created
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
        
    }
}

extension ChatViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // previously we were dequeuing a box-standard UITable view cell..now in order to dequeue it to message cell we use as keyword to cast into message cell class type. message cell class type is the custom design file which we have built
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        
        cell.label?.text = messages[indexPath.row].body
        return cell
    }
}


// We don’t want any interaction to be done with text message so commenting below delegate extension and call or the same
//extension ChatViewController: UITableViewDelegate{
//
//    // below methods is triggered when an action is performed on table view cells
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
//}
