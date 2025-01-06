//
//  UserInfoCardBigAnimation.swift
//  CV
//
//  Created by Nikita Tsomuk on 30.06.2024.
//

import SwiftUI

struct CardViewAnimationBuilder: View {
    
    @State var rotation: CGFloat = 0.0
    var isLoading: Bool
    
    var body: some View {
        
        ZStack{
            CardView(isLoading: isLoading)
            animationFrame
        }
        .frame(height: 376)
        .onAppear {
            withAnimation(.linear(duration: 5).repeatForever(autoreverses: false)) {
                rotation = 360
            }
        }
        
    }
    private var animationFrame: some View {
        // Frame Animation
        Rectangle()
            .frame(width: 220, height: 550)
            .foregroundStyle(Settings.gradientPurple)
            .rotationEffect(.degrees(rotation))
            .mask {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 7)
                    .blur(radius: 2)
                    .frame(width: UIScreen.main.bounds.width - 34, height: 370)
            }
    }
}

#Preview("Normal") {
    ZStack {
        Settings.gradientDarkPurple.ignoresSafeArea()
        CardViewAnimationBuilder(isLoading: false)
    }
}

#Preview("Loading") {
    ZStack {
        Settings.gradientDarkPurple.ignoresSafeArea()
        CardViewAnimationBuilder(isLoading: true)
    }
}


