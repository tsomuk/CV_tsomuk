//
//  StackView.swift
//  CV
//
//  Created by Nikita Tsomuk on 29.06.2024.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Stack")
                .font(.title).bold()
            
            VStack(spacing: 10) {
                HStack(spacing: 8) {
                    SkillCapsule(skill: Skills.uiKit)
                    SkillCapsule(skill: Skills.swiftUI)
                    SkillCapsule(skill: Skills.combine)
                    SkillCapsule(skill: Skills.mvp)
                }
                
                HStack(spacing: 8) {
                    SkillCapsule(skill: Skills.mvvm)
                    SkillCapsule(skill: Skills.mvc)
                    SkillCapsule(skill: Skills.spm)
                    SkillCapsule(skill: Skills.coreData)
    
                }
                
                HStack(spacing: 8) {
                    SkillCapsule(skill: Skills.userDefaults)
                    SkillCapsule(skill: Skills.realm)
                    SkillCapsule(skill: Skills.appMetrica)
                }
            }
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .background(Settings.backgroundCard.opacity(Settings.backgroundCardOpacity))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 16)
        .shadow(radius: 3, y: 3)
    }
}



#Preview {
    ZStack{
        Settings.gradientPurple.ignoresSafeArea()
        StackView()
    }
}
