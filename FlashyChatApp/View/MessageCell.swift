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
    
    override func awakeFromNib() {
        super.awakeFromNib()

        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
