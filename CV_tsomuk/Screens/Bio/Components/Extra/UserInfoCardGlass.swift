//
//  UserInfoCardBlur.swift
//  CV
//
//  Created by Nikita Tsomuk on 15.07.2024.
//


import SwiftUI

struct UserInfoCardGlass: View {
    
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
                StatViewBottomTitle(title: "Contributions", value: 304)
                StatViewBottomTitle(title: "Total PRs", value: 22)
                StatViewBottomTitle(title: "Repositories", value: 14)
                
            } .padding(.top, 30)
        }
        .foregroundStyle(.white)
        .padding(.vertical, 40)
        .frame(maxWidth: .infinity)
        .background {
            TransparentBlurView(removeAllFilters: true)
                .blur(radius: 9, opaque: true)
                .background(.white.opacity(0.05))
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .background(content: {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .stroke(.white.opacity(0.3), lineWidth: 1.5)
        })
        .padding(.horizontal, 16)
        .shadow(color: .black.opacity(0.2), radius: 10)
    }
}


#Preview {
    ZStack{
        MockData.gradientDarkPurple.ignoresSafeArea()
        UserInfoCardGlass()
            .frame(maxHeight: 400)
                .background {
                    ZStack {
                        Circle()
                            .foregroundStyle(.blueGradStart)
                            .frame(width: 151)
                            .frame(
                                maxWidth: .infinity,
                                maxHeight: .infinity,
                                alignment: .bottomTrailing
                            )
                            .offset(x: 55, y: 55)
                        
                        
                        Circle()
                            .foregroundStyle(.accent)
                            .frame(width: 151)
                            .frame(
                                maxWidth: .infinity,
                                maxHeight: .infinity,
                                alignment: .topLeading
                            )
                            .offset(x: -35, y: -35)
                    }
                }
        }
    }
     

