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
    
    static let dataBaseColor: [ContactModel] = [
        .init(contactTitle: "LinkedIn", description: "@tsomuk", imageName: "link"),
        .init(contactTitle: "Telegram", description: "@tsomuk", imageName: "tg"),
        .init(contactTitle: "Github", description: "@tsomuk", imageName: "git"),
        .init(contactTitle: "Instagram", description: "@tsomuk", imageName: "insta"),
        .init(contactTitle: "Mobile", description: "053-902-72-52", imageName: "mobile"),
        .init(contactTitle: "Email", description: "tsomuk@me.com", imageName: "mail"),
    ]
    
    static let dataBaseColor2: [ContactModel] = [
        .init(contactTitle: "LinkedIn", description: "@tsomuk", imageName: "link3"),
        .init(contactTitle: "Github", description: "@tsomuk", imageName: "git3"),
        .init(contactTitle: "Instagram", description: "@tsomuk", imageName: "insta3"),
        .init(contactTitle: "Telegram", description: "@tsomuk", imageName: "tg3"),
        .init(contactTitle: "Mobile", description: "053-902-72-52", imageName: "mobile3"),
        .init(contactTitle: "Email", description: "tsomuk@me.com", imageName: "mail3"),
    ]
}

extension ContactModel : Hashable, Identifiable {}
