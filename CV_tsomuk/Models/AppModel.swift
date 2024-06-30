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
    
    static let dataBase: [AppModel] = [
        .init(
            appTitle: "MovieQuiz",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "movieQuiz"
        ),
        .init(
            appTitle: "ImageFeed",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "imageFeed"
        ),
        .init(
            appTitle: "Habit Tracker",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "tracker"
        ),
        .init(
            appTitle: "NFT Marketplace",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "nftMarket"
        ),
        .init(
            appTitle: "Doct24",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "doct24"
        ),
        .init(
            appTitle: "Messenger",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "messenger"
        ),
        .init(
            appTitle: "Sonotron",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films. Users of the application answer questions about the movie ratings sequentially.",
            imageName: "sonotron"
        )
    ]
}

extension AppModel : Hashable, Identifiable {}
