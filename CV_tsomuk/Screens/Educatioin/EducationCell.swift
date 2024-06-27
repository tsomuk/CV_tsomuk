//
//  EducationCell.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct EducationCell: View {
    
    var title: String
    var speciality: String
    var description: String
    var image: Image
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .top, spacing: 15) {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack(alignment: .leading){
                    Text(title)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(speciality)
                        .fontWeight(.semibold)
                        .font(.caption)
                    Text(description)
                        .font(.caption)
                    
                }
                .foregroundStyle(.black)
                
                Spacer()
            }
            Text("Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. ")
                .font(.caption)
                .foregroundStyle(.black)
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding(.horizontal)
    }
}


#Preview {
    EducationCell(title: "PGUPS", speciality: "Automation technology", description: "09.2009 - 06.2014", image: Image(.sonotron))
}
