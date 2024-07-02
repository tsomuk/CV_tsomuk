//
//  ContactViewItem.swift
//  Sonotron
//
//  Created by Nikita Tsomuk on 17.06.2024.
//

import SwiftUI

struct ContactViewItem: View {
    
    var contactModel: ContactModel
    
    var body: some View {
        HStack {
            
            Image(contactModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
            
            Spacer()
            
                Text(contactModel.description)
                .font(.title2)
                .fontWeight(.semibold)
                
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: 90)
        .background(.cvGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
    }
}


#Preview {
    VStack{
        ContactViewItem(contactModel: ContactModel.dataBaseColor[0])
        ContactViewItem(contactModel: ContactModel.dataBaseColor2[0])
        ContactViewItem(contactModel: ContactModel.dataBaseMinimalistic[0])
    }
    .padding(.horizontal)
}
