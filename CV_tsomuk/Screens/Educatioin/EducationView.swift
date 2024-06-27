//
//  EducationVoew.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct EducationView: View {
    var body: some View {
        
        ZStack {
            Color.cvBackground.ignoresSafeArea()
            VStack(spacing: 20) {
                EducationCell(
                    title: "Practicum",
                    speciality: "iOS Developer",
                    description: "01.2023 - 04.2044",
                    image: Image(.practicum)
                )
                EducationCell(
                    title: "St.Petersburg State Transport University ",
                    speciality: "II Academic degree - Engineer",
                    description: "09.2009 - 06.2014",
                    image: Image(.pgups)
                )
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    EducationView()
}
