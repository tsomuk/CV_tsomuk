//
//  CardView.swift
//  CV
//
//  Created by Nikita Tsomuk on 06.01.2025.
//
import SwiftUI

struct CardView: View {
    
    var isLoading: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            userImage
            titles
            statData
             .padding(.top, 20)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 350)
        .background(Settings.backgroundCard.opacity(Settings.backgroundCardOpacity))
        .cornerRadius(15)
        .padding(.horizontal, 16)
        .shadow(radius: 3, y: 3)
    }
    
    private var userImage: some View {
        Image(.profileImage2)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 110)
            .clipShape(Circle())
            .shadow(radius: 3, y: 3)
    }
    
    private var titles: some View {
        VStack(spacing: 10) {
            Text("Nikita Tsomuk")
                .font(.title2)
                .bold()
            Text("iOS Developer")
                .font(.headline)
                .fontWeight(.semibold)
            Label("Tel-Aviv, Israel", systemImage: "mappin.and.ellipse")
                .font(.subheadline)
        }
    }
    
    private var statData: some View {
        HStack(spacing: 20) {
            StatViewBottomTitle(title: "Projects", value: 14, isLoading: isLoading)
                .frame(width: 95)
            StatViewBottomTitle(title: "Total PRs", value: 23, isLoading: isLoading)
                .frame(width: 95)
            StatViewBottomTitle(title: "Contributions", value: 532, isLoading: isLoading)
                .frame(width: 95)
            
        }
    }
}

#Preview {
    ZStack {
        Settings.gradientDarkPurple.ignoresSafeArea()
        CardView(isLoading: true)
    }
}
