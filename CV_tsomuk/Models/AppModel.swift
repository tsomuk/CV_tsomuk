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
    let detailImage: String
    let stack: [Skills]
    
    static let dataBase: [AppModel] = [
        .init(
            appTitle: "MovieQuiz",
            description: "A single-page application featuring quizzes about movies from the top 250 IMDb ratings and the most popular films.",
            imageName: "movieQuiz",
            detailImage: "movieQuiz_detail",
            stack: [.uiKit, .networking, .userDefaults, .mvc, .uiTest, .unitTest]
        ),
        .init(
            appTitle: "ImageFeed",
            description: "Client for the Unsplash service - Infinite photo feed",
            imageName: "imageFeed",
            detailImage: "imageFeed_detail",
            stack: [.uiKit, .mvp, .wKWebView, .spm, .networking, .keychainWrapper, .kingfisher, .uiTest, .unitTest]
        ),
        .init(
            appTitle: "Habit Tracker",
            description: "Multiscreen application with CoreData integration allow user track their habits",
            imageName: "tracker",
            detailImage: "tracker_detail",
            stack: [.uiKit, .mvvm, .coreData, .localization, .snapshotTest, .appMetrica, .cocoaPods]
        ),
        .init(
            appTitle: "NFT Marketplace",
            description: "Multiscreen application imitate online marketplace with network layers throw the service assebly. There are 3 main flows : Profile, Catalog and Cart",
            imageName: "nftMarket",
            detailImage: "nft_detail",
            stack: [.uiKit, .mvc, .snapkit, .spm, .wKWebView, .networking, .kingfisher]
        ),
        .init(
            appTitle: "Doct24",
            description: "In the app possible to have a look to list of the doctors and make an appointment with any of them",
            imageName: "doct24",
            detailImage: "dock24_detail",
            stack: [.swiftUI, .mvvm, .asyncAwait]
        ),
        .init(
            appTitle: "Messenger",
            description: "Messenger inside alfa super app. Allows to be connected with friends and clients. Network layer based on WebSockets",
            imageName: "messenger",
            detailImage: "mess_detail",
            stack: [.swiftUI, .combine, .mvvm, .keychainWrapper, .asyncAwait]
        ),
        .init(
            appTitle: "Sonotron NDT",
            description: "Application companion allows have a look to company catalog and all main documentation and manuals for the instruments. Otherwise allow follow to the company news and updates ",
            imageName: "sonotron",
            detailImage: "sonotron_detail",
            stack: [.swiftUI, .mvvm, .asyncAwait, ]
        )
    ]
}

extension AppModel : Hashable, Identifiable {}
