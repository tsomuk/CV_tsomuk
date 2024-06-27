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
            VStack(spacing: 20){
                ContactViewItem(title: "Telegram", labelText: "@tsomuk", labelSystemImageName: "message")
                ContactViewItem(title: "Email", labelText: "tsomuk@me.com", labelSystemImageName: "envelope")
                ContactViewItem(title: "Mobile", labelText: "053-902-72-52", labelSystemImageName: "phone")
                ContactViewItem(title: "Github", labelText: "github.com/tsomuk", labelSystemImageName: "text.and.command.macwindow")
                
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview {
    ContactsView()
}
