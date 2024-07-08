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
            description: "Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app.",
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
