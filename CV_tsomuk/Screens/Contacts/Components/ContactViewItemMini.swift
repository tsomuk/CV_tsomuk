//
//  ContactViewItemMini.swift
//  CV
//
//  Created by Nikita Tsomuk on 02.07.2024.
//

import SwiftUI

struct ContactViewItemMini: View {
    
    var contactModel: ContactModel
    
    var body: some View {
        
        VStack {
            Image(contactModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
            
                Text(contactModel.description)
                    .font(.title2)
                    .fontWeight(.semibold)
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .background(.cvGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)

    }
}


#Preview {
    HStack(spacing: 15) {
        ContactViewItemMini(contactModel: ContactModel.dataBaseColor[0])
        ContactViewItemMini(contactModel: ContactModel.dataBaseColor2[0])
    }
    .padding(.horizontal)
}
