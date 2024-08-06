//
//  LaunchScreenView.swift
//  CV
//
//  Created by Nikita Tsomuk on 05.08.2024.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var isAnimation = true
    @State private var allowedMoveToNextScreen = false
    
    var body: some View {
        
        if allowedMoveToNextScreen {
            TabBarView()
        } else {
            ZStack{
                Color.cvBackground.ignoresSafeArea()
                Circle ()
                    .fill(MockData.gradientDarkPurple)
                    .frame(width: 44, height: 44)
                    .scaleEffect(isAnimation ? 1 : 25)
                    .animation(.easeIn, value: true)
            }
            .onAppear ( ){
                withAnimation(.linear (duration: 1.5)){
                    self.isAnimation.toggle()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
                    withAnimation(.linear(duration: 1.3)) {
                        self.allowedMoveToNextScreen = true
                    }
                }
            }
        }
    }
}

#if DEBUG
#Preview {
    LaunchScreenView()
}
#endif
