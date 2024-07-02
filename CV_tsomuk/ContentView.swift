//
//  ContentView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 26.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            BioView()
                .tabItem { Label("Bio", systemImage: "person.crop.square") }
            AppsView()
                .tabItem { Label("Apps", systemImage: "apps.iphone") }
            WorkView()
                .tabItem { Label("Work", systemImage: "desktopcomputer") }
            EducationView()
                .tabItem { Label("Education", systemImage: "graduationcap") }
            ContactsView()
                .tabItem { Label("Contacts", systemImage: "phone") }
            
        }
    }
}

#Preview {
    ContentView()
}
