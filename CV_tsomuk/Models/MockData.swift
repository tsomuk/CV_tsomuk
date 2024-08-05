//
//  MockData.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct MockData {
       
    static let gradientPurple = LinearGradient(
        colors: [.accent, .cvDarkPurple],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    static let gradientDarkPurple = LinearGradient(
        colors: [.cvBackground, .cvDarkPurple],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    // MARK: - Global color settings
    
//    static let backgroundColorMain = Color.cvBackground
    static let backgroundColorMain = gradientDarkPurple
    
//    static let backgroundCard = Color.cvGray
    static let backgroundCard = Material.ultraThinMaterial
    static let backgroundCardOpacity = 0.4
}

    


