//
//  BioView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 26.06.2024.
//

import SwiftUI

private let startDate = DateComponents(calendar: Calendar.current, year: 2023, month: 1, day: 6)
private let composedDate = Calendar.current.date(from: startDate)
private var timeInterval = Calendar.current.dateComponents([.year,.month, .day, .hour, .minute, .second], from: composedDate!, to: .now)


struct BioView: View {
    var body: some View {
        
        @State var rating = 0
//        @State var currentTimeInterval: DateComponents
        
        
        
        ZStack {
            Color.cvBackground.ignoresSafeArea()
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
                HStack(spacing: 10){
                    StatViewTopTitle(title: "Years", value: timeInterval.year!)
                    StatViewTopTitle(title: "Months", value: timeInterval.month!)
                    StatViewTopTitle(title: "Days", value: timeInterval.day!)
                    StatViewTopTitle(title: "Hours", value: timeInterval.hour!)
                    StatViewTopTitle(title: "Minutes", value: timeInterval.minute!)
                    StatViewTopTitle(title: "Seconds", value: timeInterval.second!)
                }
                
                Spacer()
                
            }
            .padding(.vertical)
        } .onAppear(perform: {
            timeInterval = Calendar.current.dateComponents([.year,.month, .day, .hour, .minute, .second], from: composedDate!, to: .now)
        })
    }
}


#Preview {
    BioView()
}


