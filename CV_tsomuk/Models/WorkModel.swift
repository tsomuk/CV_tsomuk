//
//  WorkModel.swift
//  CV
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import Foundation

struct WorkModel {
    let id: String = UUID().uuidString
    let companyName: String
    let position: String
    let periodOfWork : String
    let description : String
    let imageName: String
    
    
    
    static let dataBase: [WorkModel] = [
        
        .init(
            companyName: "Ecosystem Alfa, Russia",
            position: "iOS  Developer",
            periodOfWork: "02.2024 - present",
            description: """
                Development of a messenger inside of Alfa superapp
                • Implementation of multiple user flows:
                    • Registration
                    • Authorization
                    • User profile
                • Implementation network layer
                • Added SwiftGen and SwiftLint into the project
                
                Additionally, performing team lead (team of 4 people) functions:
                • Code review
                • Assign and monitor tasks in a team
                """,
            imageName: "alfa"
        ),
        
            .init(
                companyName: "Practicum, Russia",
                position: "iOS Developer Course Mentor",
                periodOfWork: "03.2020 - present",
                description: """
                Helping student achieve their best results.
                • Interaction in chats: answering questions, checking practical assignments.
                • Host webinars on the basics of Swift.
                
                Host two big workshops for the all student of the course:
                • Debugging: Tools and Methods |31/07/2024|
                • iOS Life Hacks: How to Boost Development Productivity |30/05/2024|
                
                """,
                imageName: "practicum"
            ),
        
            .init(
                companyName: "Sonotron NDT, Israel",
                position: "QA Engineer & \niOS Developer",
                periodOfWork: "01.2020 - present",
                description: """
                As QA I'm testing native software on Windows for PCs and devices based on Windows.
                • Smoke, functional, and regression testing.
                • Conducting exploratory testing.
                • Creating test documentation (test plans, checklists).
                • Logging bugs in the tracking system (TFS Microsoft).
                
                As an iOS developer, I am developing a corporate companion app for equipment.
                This app allows users to:
                • Receive recommendations for equipment setup
                • Access documentation and manuals
                • Stay updated with company news
                • Find a company representative in their region
                """,
                imageName: "sonotron"
            )
    ]
}

extension WorkModel : Hashable, Identifiable {}

