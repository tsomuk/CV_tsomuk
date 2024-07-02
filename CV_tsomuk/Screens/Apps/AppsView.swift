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
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(AppModel.dataBase) { app in
                        AppCell(app: app)
                    }
                }
                .navigationTitle("My applications")
                Spacer()
            }
            .padding(.vertical)
            .background(.cvBackground)
        }
    }
}


#Preview {
    AppsView()
}
