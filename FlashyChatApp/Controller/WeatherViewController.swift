//
//  ViewController.swift
//  FlashyChatApp
//
//  Created by Usha Sai Chintha on 09/09/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var characterIndex = 0
        let titleText = K.appName
        for letter in titleText{
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(characterIndex), repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            characterIndex += 1
        }
       
    }
    

}

