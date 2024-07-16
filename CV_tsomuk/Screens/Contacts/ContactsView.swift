//
//  ContactsView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 26.06.2024.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color.cvBackground.ignoresSafeArea()
                
                VStack(spacing: 8){
                    
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())],
                              content: {
                        ForEach(ContactModel.dataBaseColor2.prefix(4)) { contact in
                            ContactViewItemMini(contactModel: contact)
                        }
                    })
                    
                    ForEach(ContactModel.dataBaseColor2[4..<6]) { contact in
                        ContactViewItem(contactModel: contact)
                    }
                }
                .padding(.horizontal, 15)
            }
            .navigationTitle("Contacts")
        }
    }
}


#Preview {
    ContactsView()
}
