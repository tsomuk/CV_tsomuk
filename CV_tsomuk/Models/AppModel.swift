//
//  AppModel.swift
//  CV
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import Foundation

struct AppModel {
    
    let id: String = UUID().uuidString
    let appTitle: String
    let description : String
    let imageName: String
    let stack: [Skills]
    
    static let dataBase: [AppModel] = [
        .init(
            appTitle: "MovieQuiz",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films.",
            imageName: "movieQuiz",
            stack: [.uiKit, .mvc, .uiTest, .unitTest]
        ),
        .init(
            appTitle: "ImageFeed",
            description: "Client for the Unsplash service - Infinite photo feed",
            imageName: "imageFeed",
            stack: [.uiKit, .mvp, .uiTest, .unitTest]
        ),
        .init(
            appTitle: "Habit Tracker",
            description: "Multiscreen application with CoreData integration allow user track their habits",
            imageName: "tracker",
            stack: [.uiKit, .mvvm, .coreData, .uiTest, .unitTest]
        ),
        .init(
            appTitle: "NFT Marketplace",
            description: "Multiscreen application imitate online marketplace with network layers throw the service assebly. There are 3 main flows : Profile, Catalog and Cart",
            imageName: "nftMarket",
            stack: [.uiKit, .mvc, .uiTest, .unitTest]
        ),
        .init(
            appTitle: "Doct24",
            description: "In the app possible to have a look to list of the doctors and make an appointment with any of them",
            imageName: "doct24",
            stack: [.swiftUI, .mvvm]
        ),
        .init(
            appTitle: "Messenger",
            description: "Messenger inside alfa super app. Allows to be connected with friends and clients. Network layer based on WebSockets",
            imageName: "messenger",
            stack: [.swiftUI, .combine, .mvvm]
        ),
        .init(
            appTitle: "Sonotron",
            description: "Application companion allows have a look to company catalog and all main documentation and manuals for the instruments. Otherwise allow follow to the company news and updates ",
            imageName: "sonotron",
            stack: [.swiftUI, .unitTest, .mvp]
        )
    ]
}

extension AppModel : Hashable, Identifiable {}
