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
            HStack(alignment: .center, spacing: 15) {
                Image(work.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                VStack(alignment: .leading, spacing: 4){
                    Text(work.position)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(work.companyName)
                        .font(.subheadline)
                    Text(work.periodOfWork)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                }
                Spacer()
            }
            Text(work.description)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 15)
        .background(Settings.backgroundCard.opacity(Settings.backgroundCardOpacity))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .containerRelativeFrame(.horizontal)
    }
}

#Preview {
    ScrollView (.horizontal){
        HStack{
            ForEach(0..<4) { _ in
                WorkCell(work: WorkModel.dataBase[2])
            }
        }
    }
    .scrollTargetBehavior(.paging)
}
