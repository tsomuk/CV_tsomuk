//
//  EducationModel.swift
//  CV
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import Foundation


struct EducationModel {
    
    let id: String = UUID().uuidString
    let universityName: String
    let speciality: String
    let periodOfStudy : String
    let description : String
    let imageName: String
    
    
    
    static let dataBase: [EducationModel] = [
        .init(
            universityName: "Practicum",
            speciality: "iOS Developer",
            periodOfStudy: "01.2023 - 04.2044",
            description: """
            During the cource, I completed four projects:
            • Single-page application - Movie quiz based on IMDb API
            Stack: InterfaceBuilder (UIKit), Networking, User Defaults, MVC, MVP, Git
            • Client for the Unsplash service - Infinite photo feed
            Stack: WKWebView, UITableView, ScrollView, SPM, Unit/UI tests, Fork
            • Habit tracker
            Stack: UICollectionView, CoreData, MVVM, UIPageViewController, Localization
            • Online Marketplace - Team project
            Stack: SnapKit, Networking, MVC, Cocoapods, Git
            """,
            imageName: "practicum"
        ),
        
            .init(
                universityName: "St.Petersburg State Transport University",
                speciality: "II Academic degree - Engineer",
                periodOfStudy: "09.2009 - 06.2014",
                description: "Specialisation - Automation and intelligent technologies",
                imageName: "pgups"
            ),
        
    ]
}

extension EducationModel : Hashable, Identifiable {}
