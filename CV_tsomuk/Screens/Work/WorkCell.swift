//
//  WorkCell.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct WorkCell: View {
    
    var title: String
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
                        .font(.title)
                        .fontWeight(.semibold)
                    Text(description)
                        .font(.caption)
                    
                }
                Spacer()
            }
            Text("Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.Maintain Consistency: Consistency is key when using fonts in your iOS app. Choose a primary font or a font pairing that aligns with your app’s branding and stick to it throughout the app. Consistent font usage creates a cohesive and polished user experience.")
                .font(.caption)
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding()
    }
}

#Preview {
    WorkCell(title: "Sonotron NDT", description: "01.2020 - present", image: Image(.sonotron))
}
