//
//  Skills.swift
//  CV
//
//  Created by Nikita Tsomuk on 08.07.2024.
//

import Foundation

enum Skills: String, CaseIterable {
    case all
    case uiKit
    case swiftUI
    case combine
    case mvc
    case mvp
    case mvvm
    case userDefaults
    case coreData
    case realm
    case cocoaPods
    case spm
    case unitTest
    case uiTest
    case snapshotTest
    case snapkit
    case kingfisher
    case keychainWrapper
    case wKWebView
    case localization
    case appMetrica
    case networking
    case asyncAwait
    
    var title: String {
        switch self {
        case .all:  return "All"
        case .uiKit: return "UIKit"
        case .swiftUI: return "SwiftUI"
        case .combine: return "Combine"
        case .mvc: return "MVC"
        case .mvp: return "MVP"
        case .mvvm: return "MVVM"
        case .userDefaults: return "UserDefaults"
        case .coreData: return "Core Data"
        case .realm: return "Realm"
        case .cocoaPods: return "CocoaPods"
        case .spm: return "SPM"
        case .unitTest: return "Unit Test"
        case .uiTest: return "UI Test"
        case .snapshotTest: return "Snapshot Test"
        case .snapkit: return "Snapkit"
        case .kingfisher: return "Kingfisher"
        case .keychainWrapper: return "Keychain Wrapper"
        case .wKWebView: return "WKWebView"
        case .localization: return "Localization"
        case .appMetrica: return "AppMetrica"
        case .networking: return "Networking"
        case .asyncAwait: return "Async/await"
        }
    }
}
