//
//  UserInfoCard.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct UserInfoCard: View {
    var body: some View {
        ZStack {
            
            VStack(spacing: 10) {
                
                Spacer()
                
                Text("Nikita Tsomuk")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("iOS Developer")
                    .font(.title3)
                    .fontWeight(.semibold)
                Label("Tel-Aviv, Israel", systemImage: "mappin.and.ellipse")
                    .font(.title3)
                
                HStack(spacing: 20) {
                    StatViewBottomTitle(title: "Commits", value: 297)
                    StatViewBottomTitle(title: "Total PRs", value: 22)
                    StatViewBottomTitle(title: "Projects", value: 14)
                    
                }
                .padding(.bottom, 20)
                
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
            .background(.cvGray)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 20)
            .shadow(radius: 20)
            
            VStack(spacing: 0){
                Image(.profile)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .shadow(radius: 20)
                Text("")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 250)
                //                    .background(.pink)
            }
            
        }
    }
}


#Preview {
    UserInfoCard()
}
