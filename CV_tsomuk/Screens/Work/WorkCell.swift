//
//  WorkCell.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct WorkCell: View {
    
    var work: WorkModel
    
    var body: some View {
        VStack(spacing: 15) {
            HStack(alignment: .top, spacing: 15) {
                Image(work.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack(alignment: .leading){
                    Text(work.companyName)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(work.position)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text(work.periodOfWork)
                        .font(.caption)
                    
                }
                Spacer()
            }
            Text(work.description)
                .font(.caption)

            
        }
        .padding(.horizontal)
        .padding(.vertical, 15)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.cvGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    VStack{
        WorkCell(work: WorkModel.dataBase[0])
        WorkCell(work: WorkModel.dataBase[0])
        WorkCell(work: WorkModel.dataBase[0])
        WorkCell(work: WorkModel.dataBase[0])
    }
}
