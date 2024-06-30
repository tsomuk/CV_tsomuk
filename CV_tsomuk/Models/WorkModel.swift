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
            description: "Team Lead. Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. ",
            imageName: "alfa"
        ),
        
            .init(
                companyName: "Practicum",
                position: "Junior Mentor",
                periodOfWork: "04.2020 - present",
                description: "Share some smart minds. Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. ",
                imageName: "practicum"
            ),
        
            .init(
                companyName: "Sonotron NDT",
                position: "QA Engineer",
                periodOfWork: "01.2020 - present",
                description: "Work a lot and have a bit of money.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. ",
                imageName: "sonotron"
            )
    ]
}

extension WorkModel : Hashable, Identifiable {}

