//
//  EducationVoew.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct EducationView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(EducationModel.dataBase) { ed in
                        EducationCell(educationModel: ed)
                    }
                    Text("Languages")
                        .font(.largeTitle).bold()
                        .padding(.leading, 20)
                    LanguageCell()
                }
                .padding(.vertical)
            }
            .background(.cvBackground)
            .navigationTitle("Education")
        }
    }
}

#Preview {
    EducationView()
}
