//
//  LanguageCell.swift
//  CV
//
//  Created by Nikita Tsomuk on 01.07.2024.
//

import SwiftUI

struct LanguageCellEmoji: View {
    var body: some View {
        HStack(spacing: 15) {
            
            FlagView2(flag: "🇬🇧", level: "Proficient")
            
            FlagView2(flag: "🇮🇱", level: "Basic")
            
            FlagView2(flag: "🇷🇺", level: "Native")
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MockData.backgroundCard.opacity(MockData.backgroundCardOpacity))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    ScrollView{
        LanguageCellEmoji()
        
    }
}

struct FlagView2: View {
    
    var flag: String
    var level: String
    
    var body: some View {
        VStack {
            Text(flag)
                .font(.system(size: 55))

                
            
            Text(level)
                .font(.title3)
        }
        .frame(width: 100)
    }
}
