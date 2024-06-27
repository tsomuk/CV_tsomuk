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
                .font(.callout)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
            Text(String(value))
                .foregroundStyle(.white)
        }
    }
}
#Preview {
    ZStack {
        Color(.accent).ignoresSafeArea()
        StatViewTopTitle(title: "Test", value: 32)
    }
}
