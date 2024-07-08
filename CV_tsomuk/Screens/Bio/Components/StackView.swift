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
                    SkillCapsule(skill: Skills.uiKit.title)
                    SkillCapsule(skill: Skills.swiftUI.title)
                    SkillCapsule(skill: Skills.mvc.title)
                    SkillCapsule(skill: MockData.skills[5])
                }
                
                HStack(spacing: 8) {
                    SkillCapsule(skill: MockData.skills[6])
                    SkillCapsule(skill: MockData.skills[3])
                    SkillCapsule(skill: MockData.skills[9])
                }
                
                HStack(spacing: 8) {
                    SkillCapsule(skill: MockData.skills[7])
                    SkillCapsule(skill: MockData.skills[8])
                    SkillCapsule(skill: MockData.skills[11])
                }
            }
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .background(.cvGray)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 16)
        .shadow(radius: 3, y: 3)
    }
}



#Preview {
    StackView()
}
