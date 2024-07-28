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
            companyName: "Ecosystem Alfa",
            position: "iOS  Developer",
            periodOfWork: "02.2024 - present",
            description: """
                Development of a messenger inside of Alfa superapp
                • Implementation of multiple user flows (registration/authorization/user profile)
                • Implementation network layer
                • Added SwiftGen and SwiftLint into the project
                
                Additionally, performing team lead (team of 4 people) functions:
                • Code review
                • Assign and monitor tasks in a team
                """,
            imageName: "alfa"
        ),
        
            .init(
                companyName: "Practicum",
                position: "iOS Developer Course Mentor",
                periodOfWork: "03.2020 - present",
                description: """
                Helping student achieve their best results.
                • Interaction in chats: answering questions, checking practical assignments.
                • Host webinars on the basics of Swift.
                """,
                imageName: "practicum"
            ),
        
            .init(
                companyName: "Sonotron NDT",
                position: "QA Engineer",
                periodOfWork: "01.2020 - present",
                description: """
                Testing native software on Windows for PCs and devices based on Windows.
                • Smoke, functional, and regression testing.
                • Conducting exploratory testing.
                • Creating test documentation (test plans, checklists).
                • Logging bugs in the tracking system (TFS Microsoft).
                """,
                imageName: "sonotron"
            )
    ]
}

extension WorkModel : Hashable, Identifiable {}

