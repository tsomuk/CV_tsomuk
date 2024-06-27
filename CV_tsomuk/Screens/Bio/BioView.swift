//
//  BioView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 26.06.2024.
//

import SwiftUI

struct BioView: View {
    var body: some View {
        
        @State var rating = 0
        
        ZStack {
            Color.gray.opacity(0.2).ignoresSafeArea()
            VStack(spacing: 15) {
//                UserInfoCard()
                UserInfoCardBig()
                Text("Stack")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.accent)
                    
                HStack(spacing: 10) {
                    SkillCapsule(skill: MockData.skills[0], color: .green)
                    SkillCapsule(skill: MockData.skills[1], color: .green)
                    SkillCapsule(skill: MockData.skills[2], color: .green)
                    SkillCapsule(skill: MockData.skills[3], color: .pink)
                    
                }
                
                HStack(spacing: 5) {
                    SkillCapsule(skill: MockData.skills[4], color: .pink)
                    SkillCapsule(skill: MockData.skills[5], color: .pink)
                    SkillCapsule(skill: MockData.skills[6], color: .pink)
                    SkillCapsule(skill: MockData.skills[7], color: .blue)
                }
                
                HStack(spacing: 5) {
                    SkillCapsule(skill: MockData.skills[8], color: .blue)
                    SkillCapsule(skill: MockData.skills[9], color: .blue)
//                    SkillCapsule(skill: MockData.skills[10], color: .pink)
                    SkillCapsule(skill: MockData.skills[11], color: .blue)
                }
                
                Text("Work Experiens")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.accent)
                HStack(spacing: 15){
                    StatViewTopTitle(title: "Years", value: 1)
                    StatViewTopTitle(title: "Days", value: 164)
                    StatViewTopTitle(title: "Hours", value: 12)
                    StatViewTopTitle(title: "Minutes", value: 43)
                    StatViewTopTitle(title: "Seconds", value: 34)
                }
                
                Spacer()
                
            }
            .padding(.vertical)
        }
    }
}


#Preview {
    BioView()
}


