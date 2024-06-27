//
//  SkillCapsule.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct SkillCapsule: View {
    
    var skill: String
    var color: Color
    
    var body: some View {
        Text(skill)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(color)
            .clipShape(Capsule())
    }
}

#Preview {
    HStack {
        SkillCapsule(skill: MockData.skills[1], color: .green)
        SkillCapsule(skill: MockData.skills[2], color: .blue)
        SkillCapsule(skill: MockData.skills[5], color: .pink)
        SkillCapsule(skill: MockData.skills[6], color: .pink)
    }
}
