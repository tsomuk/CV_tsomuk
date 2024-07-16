//
//  AppsView.swift
//  CV_tsomuk
//
//  Created by Nikita Tsomuk on 27.06.2024.
//

import SwiftUI

struct AppsView: View {
    
    @State var selectedFilterIndex = 0
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical) {
            VStack(spacing: 0) {
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 8) {
                        ForEach(MockData.skills, id: \.self) { skill  in
                            SkillCapsule(skill: skill, isSelected: false)
                        }
                    }
                    .padding()
                }
                .scrollIndicators(.hidden)
            
                VStack(spacing: 15) {
                    ForEach(AppModel.dataBase) { app in
                        AppCell(app: app)
                    }
                }
            }
        }
            .background(.cvBackground)
            .navigationTitle("My applications")
        }
    }
}


#Preview {
    AppsView()
}
