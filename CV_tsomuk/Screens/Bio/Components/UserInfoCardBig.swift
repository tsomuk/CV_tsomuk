//
//  UserInfoCardBig.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct UserInfoCardBig: View {
    
    
    
    var body: some View {
        
        
        VStack(spacing: 10) {
            
            Image(.profileImage2)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 110)
                .clipShape(Circle())
                .shadow(radius: 20)
            
            Text("Nikita Tsomuk")
                .font(.title2)
                .fontWeight(.bold)
            Text("iOS Developer")
                .font(.title3)
                .fontWeight(.semibold)
            Label("Tel-Aviv, Israel", systemImage: "mappin.and.ellipse")
                .font(.subheadline)
            
            HStack(spacing: 30) {
                StatViewBottomTitle(title: "Commits", value: 297)
                StatViewBottomTitle(title: "Total PRs", value: 22)
                StatViewBottomTitle(title: "Projects", value: 14)
                
            } .padding(.top, 30)
        }
        .padding(.vertical, 40)
        .frame(maxWidth: .infinity)
        .background(MockData.gradientPurple)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 16)
        .shadow(radius: 3, y: 3)
    }
}


#Preview {
    UserInfoCardBig()
        .frame(maxHeight: 400)
}
