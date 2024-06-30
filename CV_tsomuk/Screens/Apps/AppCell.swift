//
//  AppCell.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct AppCell: View {
    
    var app: AppModel
    
    var body: some View {
        HStack(spacing: 15){
            Image(app.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack(alignment: .leading){
                Text(app.appTitle)
                    .font(.headline)
                    .fontWeight(.semibold)
                Text(app.description)
                    .font(.caption)
                
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 90)
        .background(.cvGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    ZStack{
        Color(.gray.withAlphaComponent(0.2)).ignoresSafeArea()
        AppCell(app: AppModel.dataBase[0])
    }
    .previewLayout(.sizeThatFits) // Не работает
}
