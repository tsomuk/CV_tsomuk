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
                    .fontWeight(.semibold)
                Text("iOS Developer")
                    .font(.title3)
                    .fontWeight(.semibold)
                Label("Tel-Aviv, Isral", systemImage: "mappin.and.ellipse")
                    .font(.subheadline)
                
                HStack(spacing: 30) {
                    StatViewBottomTitle(title: "Commits", value: 223)
                    StatViewBottomTitle(title: "Total PRs", value: 22)
                    StatViewBottomTitle(title: "Projects", value: 9)
                    
                } .padding(.top, 20)
                
                
            }
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: 350)
            .background(.accent)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 20)
            .shadow(radius: 20)
            
            
                
            
                
            
            
        
    }
}


#Preview {
    UserInfoCardBig()
}
