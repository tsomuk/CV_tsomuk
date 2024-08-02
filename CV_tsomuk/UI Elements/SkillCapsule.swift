//
//  SkillCapsule.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct SkillCapsule: View {
    
    var skill: String
    var color: Color = .accentColor
    
    var isSelected: Bool = false
    
    var body: some View {
        Text(skill)
            .fontWeight(.semibold)
            .padding(.vertical, 5)
            .padding(.horizontal)
            .background(isSelected ? .accent : .clear)
            .foregroundStyle(isSelected ? .white : Color(.label))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(color, lineWidth: 3)
            )
    }
}

#Preview {
    HStack {
        SkillCapsule(skill: MockData.skills[1])
        SkillCapsule(skill: MockData.skills[6])
        SkillCapsule(skill: MockData.skills[2], isSelected: true)
        SkillCapsule(skill: MockData.skills[5])
        
    }
}
