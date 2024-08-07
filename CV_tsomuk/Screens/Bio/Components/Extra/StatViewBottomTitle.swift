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
    
    var body: some View {
        VStack{
            Text(String(value))
                .font(.system(size: 23))
                .fontWeight(.semibold)
            Text(title)
                .font(.subheadline)
        }
    }
}

#Preview {
    ZStack{
        Color.accentColor.opacity(0.5).ignoresSafeArea()
        StatViewBottomTitle(title: "Test", value: 32)
    }
}
