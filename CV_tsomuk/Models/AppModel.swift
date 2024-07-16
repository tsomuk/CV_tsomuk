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
            stack: [.swiftUI, .uiKit, .agile]
        ),
        .init(
            appTitle: "ImageFeed",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films.",
            imageName: "imageFeed",
            stack: [.swiftUI, .uiKit, .agile]
        ),
        .init(
            appTitle: "Habit Tracker",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films.",
            imageName: "tracker",
            stack: [.uiKit, .unitTest, .mvp]
        ),
        .init(
            appTitle: "NFT Marketplace",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "nftMarket",
            stack: [.uiKit, .unitTest, .mvp]
        ),
        .init(
            appTitle: "Doct24",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "doct24",
            stack: [.swiftUI, .unitTest, .mvvm]
        ),
        .init(
            appTitle: "Messenger",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "messenger",
            stack: [.swiftUI, .combine, .mvvm]
        ),
        .init(
            appTitle: "Sonotron",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "sonotron",
            stack: [.swiftUI, .unitTest, .mvp]
        )
    ]
}

extension AppModel : Hashable, Identifiable {}
