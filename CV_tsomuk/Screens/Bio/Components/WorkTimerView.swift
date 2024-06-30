//
//  WorkTimerView.swift
//  CV
//
//  Created by Nikita Tsomuk on 29.06.2024.
//

import SwiftUI

private let startDate = DateComponents(calendar: Calendar.current, year: 2023, month: 1, day: 6)
private let composedDate = Calendar.current.date(from: startDate)
private var timeInterval = Calendar.current.dateComponents([.year,.month, .day, .hour, .minute, .second], from: composedDate!, to: .now)


struct WorkTimerView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Work Experiens")
                .font(.title).bold()

            HStack(spacing: 10){
                StatViewTopTitle(title: "Year", value: timeInterval.year!)
                StatViewTopTitle(title: "Months", value: timeInterval.month!)
                StatViewTopTitle(title: "Days", value: timeInterval.day!)
                
            }
            HStack(spacing: 10){
                StatViewTopTitle(title: "Hours", value: timeInterval.hour!)
                StatViewTopTitle(title: "Minutes", value: timeInterval.minute!)
                StatViewTopTitle(title: "Seconds", value: timeInterval.second!)
            }
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .background(.cvGray)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 16)
        .shadow(radius: 3, y: 3)
        .onAppear(perform: {
            timeInterval = Calendar.current.dateComponents([.year,.month, .day, .hour, .minute, .second], from: composedDate!, to: .now)
        })
    }
}

#Preview {
    WorkTimerView()
}
