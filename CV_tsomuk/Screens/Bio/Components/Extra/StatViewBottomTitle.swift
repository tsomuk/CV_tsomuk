//
//  StatViewBottomTitle.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct StatViewBottomTitle: View {
    
    var title: String
    var value: Int
    var isLoading: Bool = false
    
    var body: some View {
        VStack{
            ZStack {
                Text(String(value))
                    .font(.system(size: 23))
                    .fontWeight(.semibold)
                    .opacity(isLoading ? 0 : 1)
                ProgressView()
                    .opacity(isLoading ? 1 : 0)
            }
        
        Text(title)
            .font(.subheadline)
        }
    }
}

#Preview {
    ZStack{
        Color.accentColor.opacity(0.5).ignoresSafeArea()
        HStack(spacing: 30){
            StatViewBottomTitle(title: "Test", value: 32)
            StatViewBottomTitle(
                title: "Test",
                value: 32,
                isLoading: true
            )
        }
    }
}
