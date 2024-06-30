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
        VStack(spacing: 15) {
            HStack(alignment: .top, spacing: 15) {
                Image(educationModel.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack(alignment: .leading){
                    Text(educationModel.universityName)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(educationModel.speciality)
                        .fontWeight(.semibold)
                        .font(.caption)
                    Text(educationModel.periodOfStudy)
                        .font(.caption)
                    
                }
                
                
                Spacer()
            }
            Text(educationModel.description)
                .font(.caption)
                
            
            
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
    VStack{
        EducationCell(educationModel: EducationModel.dataBase[0])
        EducationCell(educationModel: EducationModel.dataBase[0])
        EducationCell(educationModel: EducationModel.dataBase[0])
    }
}
