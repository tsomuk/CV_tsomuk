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
                    
                    SkillCapsule(skill: MockData.skills[1], color: .green)
                    SkillCapsule(skill: MockData.skills[2], color: .green)
                    SkillCapsule(skill: MockData.skills[4], color: .pink)
                    SkillCapsule(skill: MockData.skills[5], color: .pink)
                }
                
                
                HStack(spacing: 8) {
                    SkillCapsule(skill: MockData.skills[6], color: .pink)
                    SkillCapsule(skill: MockData.skills[3], color: .pink)
                    SkillCapsule(skill: MockData.skills[9], color: .blue)
                }
                
                HStack(spacing: 8) {
                    SkillCapsule(skill: MockData.skills[7], color: .blue)
                    SkillCapsule(skill: MockData.skills[8], color: .blue)
                    SkillCapsule(skill: MockData.skills[11], color: .blue)
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
