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
                .frame(width: 100)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
            
            VStack(){
//                Text(contactModel.contactTitle)
//                    .font(.title3)
//                    .fontWeight(.semibold)
                
                Text(contactModel.description)
                    .font(.title2).bold()
                
                
                
                
            }
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(.cvGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 3, y: 2)
        .padding(.horizontal)
        
        
        
    }
}


#Preview {
    ContactViewItem(contactModel: ContactModel.dataBase[0])
}
