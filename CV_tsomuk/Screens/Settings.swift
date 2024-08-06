//
//  Settings.swift
//  CV
//
//  Created by Nikita Tsomuk on 06.08.2024.
//

import SwiftUI

struct Settings: View {
    
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
    static var backgroundColorMain = gradientDarkPurple
    
//    static let backgroundCard = Color.cvGray
    static let backgroundCard = Material.ultraThinMaterial
    static let backgroundCardOpacity = 0.4
    
    
    
    @State var theme = false
    @State var theme2 = false
    @State var theme3 = false
    
    var body: some View {
        
        
        VStack(spacing: 10){
            Toggle("First setting", isOn: $theme).padding()
                .background(Settings.backgroundCard)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Toggle("Second setting ", isOn: $theme2).padding()
                .background(Settings.backgroundCard)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
        }
        .padding(.horizontal, 30)
        .toggleStyle(SwitchToggleStyle(tint: .accent))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.cvDarkPurple)
        .presentationDetents([.height(220), .medium])
        .presentationDragIndicator(.visible)
        .ignoresSafeArea()
    }
}

#Preview {
    Settings()
}
