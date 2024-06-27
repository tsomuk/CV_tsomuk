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
        VStack(spacing: 20) {
            HStack(alignment: .top, spacing: 15) {
                Image(work.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack(alignment: .leading){
                    Text(work.companyName)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text(work.position)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text(work.periodOfWork)
                        .font(.caption)
                        .foregroundStyle(.black)
                    
                }
                Spacer()
            }
            Text(work.description)
                .font(.caption)
                .foregroundStyle(.black)
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    WorkCell(work: WorkModel.dataBase[0])
}
