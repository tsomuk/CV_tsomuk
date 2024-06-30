//
//  ContactModel.swift
//  CV
//
//  Created by Nikita Tsomuk on 30.06.2024.
//

import Foundation


struct ContactModel {
    
    let id: String = UUID().uuidString
    let contactTitle: String
    let description : String
    let imageName: String
    
    static let dataBase: [ContactModel] = [
        .init(contactTitle: "LinkedIn", description: "@tsomuk", imageName: "link"),
        .init(contactTitle: "Email", description: "tsomuk@me.com", imageName: "mail"),
        .init(contactTitle: "Telegram", description: "@tsomuk", imageName: "tg"),
        .init(contactTitle: "Github", description: "github.com/tsomuk", imageName: "git"),
        .init(contactTitle: "Instagram", description: "@tsomuk", imageName: "insta"),
    ]
}

extension ContactModel : Hashable, Identifiable {}
