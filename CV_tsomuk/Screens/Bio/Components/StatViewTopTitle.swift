//
//  StatView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct StatViewTopTitle: View {
    
    var title: String
    var value: Int
    
    var body: some View {
        VStack{
            Text(title)
                .font(.callout).bold()
                .foregroundStyle(.gray)
            
            Text(String(format: "%02d", value))
                .font(.title2.bold())
                .contentTransition(.numericText())
        }
        .frame(width: 100)
    }
}

#Preview {
    ZStack {
        Color(.pink.opacity(0.2)).ignoresSafeArea()
        StatViewTopTitle(title: "Test", value: 3)
        
    }
}
