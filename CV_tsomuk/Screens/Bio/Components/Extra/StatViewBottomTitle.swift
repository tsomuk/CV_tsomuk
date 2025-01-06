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
            if isLoading {
                ProgressView()
            } else {
                Text(String(value))
                    .font(.system(size: 23))
                    .fontWeight(.semibold)
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
            StatViewBottomTitle(title: "Test", value: 32, isLoading: true)
        }
    }
}
