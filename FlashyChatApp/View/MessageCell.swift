//
//  MessageCell.swift
//  FlashyChatApp
//
//  Created by Usha Sai Chintha on 10/09/22.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var righImageView: UIImageView!
    
    // below function is like a viewDidLoad in view controller
    // below function is called whenever a new cell is created from messagecell.xib file
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
