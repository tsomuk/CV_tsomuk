//
//  EducationCell.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct EducationCell: View {
    
    var educationModel: EducationModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack(spacing: 15) {
                Image(educationModel.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack(alignment: .leading, spacing: 5){
                    Text(educationModel.universityName)
                        .font(.title3)
                    Text(educationModel.speciality)
                        .fontWeight(.semibold)
                        .font(.callout).bold()
                    Text(educationModel.periodOfStudy)
                        .font(.callout)
                    
                }
                
                Spacer()
            }
            Text(educationModel.description)
                .font(.callout)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.cvGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding(.horizontal)
    }
}


#Preview {
    ScrollView{
        EducationCell(educationModel: EducationModel.dataBase[0])
//        EducationCell(educationModel: EducationModel.dataBase[1])
    }
}
