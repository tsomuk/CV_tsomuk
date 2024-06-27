//
//  ContactViewItem.swift
//  Sonotron
//
//  Created by Nikita Tsomuk on 17.06.2024.
//

import SwiftUI

struct ContactViewItem: View {
    
    var title: String
    var labelText: String
    var labelSystemImageName: String
    
    var body: some View {
        VStack(spacing: 10) {
            Text(title)
                .font(.title).bold()
            Label(labelText, systemImage: labelSystemImageName)
        }
        .tint(.white)
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(.accent.gradient)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 30)
        .shadow(radius: 10, x: 0, y: 10)

    }
        
}


#Preview {
    ContactViewItem(
        title: "Sales test",
        labelText: "sales@sonotronndt.com",
        labelSystemImageName: "envelope"
    )
}
