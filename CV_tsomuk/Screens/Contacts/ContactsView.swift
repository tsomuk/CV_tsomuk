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
                VStack(spacing: 20){
                    ForEach(ContactModel.dataBase) { contact in
                        ContactViewItem(contactModel: contact)
                    }
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview {
    ContactsView()
}
