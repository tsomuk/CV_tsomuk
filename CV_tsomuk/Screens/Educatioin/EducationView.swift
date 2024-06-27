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
                ForEach(EducationModel.dataBase, id: \.self) { ed in
                    EducationCell(educationModel: ed)
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    EducationView()
}
