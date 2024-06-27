//
//  AppCell.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct AppCell: View {
    
    var title: String
    var description: String
    var image: Image
    
    var body: some View {
        HStack(spacing: 15){
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack(alignment: .leading){
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                Text(description)
                    .font(.caption)
                    .foregroundStyle(.black)
                
            }
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, minHeight: 90)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    ZStack{
        Color(.gray.withAlphaComponent(0.2)).ignoresSafeArea()
    AppCell(title: "Sonotron", description: "Basic tutorial app for the Sonotron units world wide localizied", image: Image(.sonotron))
    }
}
