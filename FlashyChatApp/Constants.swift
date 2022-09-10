//
//  Constants.swift
//  FlashyChatApp
//
//  Created by Usha Sai Chintha on 10/09/22.
//

// Constants are generally created as struct and named either as Contants or K
struct Constants{
    // if a variable is created as let or var its called a instance property i.e a property tied to instance or objected created from. So if below line is just let registerSegue then registerSegue is tied to struct Constants object
    // if we add static keyword, it turns out as type property i.e its a property associated with Constants data type as created below
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
}


struct K {
    static let appName = "⚡️FlashChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
