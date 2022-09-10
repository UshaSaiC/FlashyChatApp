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
    Message(sender: "1@2.com", body: "How are you...")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // so whenever user interacts with tableview, then tableViewdelegate methods gets triggered
        tableView.delegate = self
        title = K.appName
        navigationItem.hidesBackButton = true
        
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
    
    // basically talks about how many rows/cells are needed in table view and what data needs to be pu in over
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    // asks about a UI table view cell that needs to be displayed in each and every row of table view and it gets called for as many times as rows in table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // dequeueReusableCell returns a reusable cell for specified reused identifier and adds it to the table
        // reused identifier is the identified set when we add cells to table view in design file
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = messages[indexPath.row].body
        return cell
    }
}

extension ChatViewController: UITableViewDelegate{
    
    // below methods is triggered when an action is performed on table view cells
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
