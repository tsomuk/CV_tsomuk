//
//  UserInfoCardBigAnimation.swift
//  CV
//
//  Created by Nikita Tsomuk on 30.06.2024.
//

import SwiftUI

struct UserInfoCardBigAnimation: View {
    
    @State var rotation: CGFloat = 0.0
    
    var body: some View {
        
        ZStack{
            CardView()
//            UserInfoCardBlur()
            // Frame Animation
            Rectangle()
                .frame(width: 220, height: 550)
                .foregroundStyle(MockData.gradientPurple)
                .rotationEffect(.degrees(rotation))
                .mask {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 7)
                        .blur(radius: 2)
                        .frame(width: UIScreen.main.bounds.width - 34, height: 370)
                }
            
        }
        .frame(height: 376)
        .onAppear {
            withAnimation(.linear(duration: 5).repeatForever(autoreverses: false)) {
                rotation = 360
            }
        }
        
    }
}

#Preview {
    ZStack {
        MockData.gradientDarkPurple.ignoresSafeArea()
        UserInfoCardBigAnimation()
    }
}





struct CardView: View {
    var body: some View {
        VStack(spacing: 10) {
            
            Image(.profileImage2)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 110)
                .clipShape(Circle())
                .shadow(radius: 3, y: 3)
            
            Text("Nikita Tsomuk")
                .font(.title2).bold()
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
        .frame(maxWidth: .infinity)
        .frame(height: 370)
        .background(.ultraThinMaterial.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 16)
        .shadow(radius: 3, y: 3)
    }
}
