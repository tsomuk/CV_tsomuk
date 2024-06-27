//
//  AppsView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct AppsView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.gray.opacity(0.2).ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(0..<7) { _ in
                            AppCell(title: "Sonotron", description: "descriction", image: Image(.sonotron))
                        }
                        .navigationTitle("Applications")
                        Spacer()
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}

#Preview {
    AppsView()
}
